#!/usr/bin/env ruby
# frozen_string_literal: true

# Ruby smoke entrypoint (FR-016).
#
# Drives the shared scenarios against production. Score lifecycle only: no OMR conversion, nothing
# metered (FR-016a).
#
# Any account can run this, so a contributor can point it at their own. What keeps it safe is not
# who the account belongs to but what the suite touches: every score it creates is titled
# `smoke-test-<random>`, it deletes what it created before returning, and it reads nothing else on
# the account.
#
# Never prints a response body, token or account identifier (FR-016d).

$LOAD_PATH.unshift(File.expand_path('../lib', __dir__))

require 'securerandom'
require 'yaml'
require 'flat_api'

REDACT = ENV['FLAT_SMOKE_REDACT'] == '1'
TITLE_PREFIX = 'smoke-test'

def redact(text)
  REDACT ? '<redacted>' : text
end

$failures = []

def check(name, condition, detail = '')
  if condition
    puts "  #{name} ... ok"
  else
    puts "  #{name} ... FAIL"
    $failures << (detail.empty? ? name : "#{name}: #{detail}")
  end
end

scenarios_path = ARGV[0] or abort 'usage: smoke.rb <scenarios.yaml>'
scenarios = YAML.safe_load_file(scenarios_path)

forbidden = scenarios.fetch('forbidden_operations', [])
scenarios.fetch('scenarios', []).each do |scenario|
  next unless forbidden.include?(scenario['operation'])

  abort "refusing to run #{scenario['id']}: #{scenario['operation']} is metered"
end

token = ENV['FLAT_TEST_TOKEN'] or abort 'FLAT_TEST_TOKEN is required'

fixture = File.join(File.dirname(scenarios_path), 'fixtures', 'minimal.musicxml')
abort "missing fixture: #{fixture}" unless File.file?(fixture)

# Through FlatClient, deliberately: it is the entry point the README and QUICKSTART document, so
# the path a new user takes is the path this suite proves. Building the *Api classes directly is
# equivalent and also supported, but it is not what the docs tell people to do.
client = FlatApi::FlatClient.new(access_token: token)

account = client.account
scores = client.scores
collections = client.collections

created = []
created_collections = []

begin
  # The token authenticates and identifies an account.
  me = account.get_authenticated_user
  check('whoami', !me.id.nil?, 'no id on the authenticated user')

  # Create a score from MusicXML, the most common write path.
  title = "#{TITLE_PREFIX}-#{SecureRandom.hex(4)}"
  # ScoreCreation is a oneOf, which this generator emits as a module rather than a class, so the
  # variant goes to create_score directly. Attributes are snake_case here, unlike the wire.
  score = scores.create_score(
    FlatApi::ScoreCreationFileImport.new(
      title: title,
      privacy: 'private',
      filename: 'minimal.musicxml',
      # base64 is the only encoding the API declares. pack('m0') rather than Base64: base64 became
      # a bundled gem in Ruby 3.4, and bundler excludes bundled gems absent from the Gemfile, so
      # requiring it raises LoadError under bundle exec on 3.4 while working fine on 3.3.
      data: [File.binread(fixture)].pack('m0'),
      data_encoding: 'base64'
    )
  )
  # Registered before anything else can fail, so the ensure block always reclaims it.
  created << score.id if score.respond_to?(:id) && score.id
  check('create-score', !created.empty?, 'no id on the created score')
  raise 'create-score returned no id' if created.empty?

  score_id = created.first

  # Read it back.
  fetched = scores.get_score(score_id)
  check('read-score', fetched.id == score_id, 'the score read back is not the one created')

  # Rename it, exercising a PUT path.
  renamed = "#{title}-renamed"
  updated = scores.edit_score(score_id, { 'title' => renamed })
  check('update-score-metadata', updated.title == renamed, 'the title did not change')

  # Export to MusicXML, exercising a binary response.
  exported = scores.get_score_revision_data(score_id, 'last', 'mxl')
  check('export-score', !exported.nil?, 'the export returned nothing')

  # Traverse across a real page boundary. This is the only check that proves the Link-header cursor
  # works end to end, and it has to force more than one page to prove anything: an earlier version
  # asked for ten items on an account holding fewer, so it never requested a second page and passed
  # for a year while paginate sent the cursor under the wrong parameter name and silently returned
  # page one forever.
  #
  # listCollections rather than getUserScores: the latter returns only public scores, and the score
  # this run creates is private.
  3.times do |index|
    collection = collections.create_collection(
      FlatApi::CollectionCreation.new(title: "#{title}-collection-#{index}", privacy: 'private')
    )
    created_collections << collection.id if collection.respond_to?(:id) && collection.id
  end
  check('create-collections', created_collections.length == 3, 'could not create three collections')

  # limit: 1 forces one request per item, so the traversal cannot succeed without following the
  # cursor. Every id we created must come back exactly once.
  seen = client.paginate(:list_collections, parent: 'user', limit: 1).map do |item|
    item.respond_to?(:id) ? item.id : nil
  end
  missing = created_collections - seen
  duplicated = seen.compact.tally.select { |_, count| count > 1 }.keys
  check('paginate-across-pages',
        seen.length > 1 && missing.empty? && duplicated.empty?,
        "pages=#{seen.length} missing=#{missing.length} duplicated=#{duplicated.length}")

  # A missing score raises the typed error, not a generic failure. This is what makes the SDK
  # usable under failure rather than merely correct under success.
  begin
    scores.get_score('000000000000000000000000')
    check('typed-not-found', false, 'no error raised for a missing score')
  rescue FlatApi::FlatNotFoundError
    check('typed-not-found', true)
  rescue StandardError => e
    check('typed-not-found', false, "raised #{e.class}, not FlatNotFoundError")
  end

  # An invalid token raises the typed authentication error.
  begin
    # A fresh Configuration, not ApiClient.new: that one shares Configuration.default, so setting
    # a bad token on it would replace the real one for every later call, including the cleanup.
    bad_config = FlatApi::Configuration.new
    bad_config.access_token = 'invalid'
    FlatApi::AccountApi.new(FlatApi::ApiClient.new(bad_config)).get_authenticated_user
    check('typed-auth-error', false, 'no error raised for an invalid token')
  rescue FlatApi::FlatAuthenticationError
    check('typed-auth-error', true)
  rescue StandardError => e
    check('typed-auth-error', false, "raised #{e.class}, not FlatAuthenticationError")
  end
  # The retry policy is wired into the request path, not merely defined. It was defined,
  # documented and never called once: every request went straight past it, so the first 403 from a
  # rate limit reached the caller as a failure. Nothing in a build catches that, because the file
  # exists and the class is correct.
  #
  # A real throttle cannot be induced without hammering production, so this checks the two things
  # that were actually wrong: the wrapper is installed, and the policy says to retry the errors
  # Flat uses for throttling and server failures.
  wrapped = FlatApi::ApiClient.instance_methods.include?(:call_api_once)
  policy = client.config.retry_policy
  retries_throttle = policy.should_retry?(FlatApi::FlatRateLimitError.new('x'), 'GET', 1)
  retries_5xx = policy.should_retry?(FlatApi::FlatServerError.new('x'), 'GET', 1)
  # A plain 403 is a genuine authorization failure. Retrying it would be worse than not retrying.
  keeps_403 = !policy.should_retry?(FlatApi::FlatAuthorizationError.new('x'), 'GET', 1)
  # A POST may already have been applied, so it must not be replayed.
  keeps_post = !policy.should_retry?(FlatApi::FlatServerError.new('x'), 'POST', 1)
  check('retry-policy-applied',
        wrapped && retries_throttle && retries_5xx && keeps_403 && keeps_post,
        "wrapped=#{wrapped} throttle=#{retries_throttle} 5xx=#{retries_5xx} " \
        "keeps403=#{keeps_403} keepsPost=#{keeps_post}")

  # An expired token refreshes itself. TokenManager#access_token used to return the expired token
  # unconditionally, which made Tokens#expired? dead code: every request after the expiry failed
  # with a 401 that a refresh would have avoided. No network here; the helper is a stub.
  refreshes = Struct.new(:calls) do
    def refresh(_refresh_token)
      self.calls += 1
      FlatApi::Tokens.new(access_token: 'refreshed', refresh_token: 'r', expires_at: Time.now.to_i + 3600)
    end
  end.new(0)
  manager = FlatApi::TokenManager.new(
    FlatApi::Tokens.new(access_token: 'stale', refresh_token: 'r', expires_at: Time.now.to_i - 60),
    helper: refreshes
  )
  first = manager.access_token
  second = manager.access_token
  check('oauth-refreshes-on-expiry',
        first == 'refreshed' && second == 'refreshed' && refreshes.calls == 1,
        "token=#{first.inspect} refreshes=#{refreshes.calls} (expected one refresh, then cached)")

rescue FlatApi::FlatError => e
  # The class, status and code, never the message: the message can quote a request body, and this
  # runs with redaction on precisely so a failure does not become a disclosure. Those three are
  # enough to say what went wrong, which a bare "<redacted>" is not.
  $failures << "unhandled #{e.class} status=#{e.status} code=#{e.code}"
rescue StandardError => e
  $failures << "unhandled #{e.class}: #{redact(e.message)}"
ensure
  # Delete what this run created, whatever happened above. Residue that survives is reported rather
  # than swallowed, so cleanup.py can reclaim it and a maintainer knows to look.
  created.each do |id|
    scores.delete_score(id)
    puts "  cleanup score #{redact(id)} ... deleted"
  rescue StandardError => e
    $failures << "cleanup failed for score #{redact(id)}: #{e.class}"
  end

  created_collections.each do |id|
    collections.delete_collection(id)
    puts "  cleanup collection #{redact(id)} ... deleted"
  rescue StandardError => e
    $failures << "cleanup failed for collection #{redact(id)}: #{e.class}"
  end
end

if $failures.any?
  $failures.each { |failure| warn "  FAIL #{failure}" }
  exit 1
end

puts 'smoke: PASS'
