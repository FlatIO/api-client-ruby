# frozen_string_literal: true

module FlatApi
  # One object to start from.
  #
  #   client = FlatApi::FlatClient.new(access_token: 'YOUR_TOKEN')
  #   client.account.get_authenticated_user
  #   client.paginate(:list_collections, parent: 'user').each { |c| puts c.title }
  #
  # It owns one ApiClient, so every API reached through it shares a connection and a
  # configuration. Constructing the generated classes directly still works and is equivalent.
  class FlatClient
    # Short name to generated class. The order matters: paginate resolves an operation by asking
    # each API in turn, and two of them define get_user_scores, so scores wins over users.
    APIS = {
      account: 'AccountApi',
      classes: 'ClassApi',
      collections: 'CollectionApi',
      edu_resources: 'EduResourcesApi',
      groups: 'GroupApi',
      omr: 'OMRApi',
      organization: 'OrganizationApi',
      scores: 'ScoreApi',
      tasks: 'TaskApi',
      users: 'UserApi'
    }.freeze

    attr_reader :api_client, :config

    # +config+ defaults to a fresh Configuration rather than Configuration.default: a client built
    # with its own token must not overwrite the token every other client is using.
    def initialize(access_token: nil, config: nil, retry_policy: nil)
      @config = config || Configuration.new
      @config.access_token = access_token unless access_token.nil?
      @config.retry_policy = retry_policy unless retry_policy.nil?
      @api_client = ApiClient.new(@config)
      @apis = {}
    end

    APIS.each_key { |name| define_method(name) { api(name) } }

    # One generated API by short name, memoised.
    def api(name)
      klass = APIS[name.to_sym]
      raise ArgumentError, "unknown API #{name}, expected one of: #{APIS.keys.join(', ')}" if klass.nil?

      @apis[name.to_sym] ||= FlatApi.const_get(klass).new(@api_client)
    end

    # Every item across every page of a cursor-paginated operation, as a lazy Enumerator.
    # Positional arguments are the operation's path parameters; keywords are its query parameters.
    #
    #   client.paginate(:list_collections, parent: 'user').each { |c| puts c.title }
    #   client.paginate(:get_user_scores, 'me') { |score| puts score.title }
    #
    # An operation that does not paginate yields its single page, so this is always safe to use.
    def paginate(operation, *args, **params, &block)
      method = "#{operation}_with_http_info"
      owner = APIS.keys.find { |name| api(name).respond_to?(method) }
      raise ArgumentError, "no operation #{operation} on any Flat API" if owner.nil?

      target = api(owner)
      enum = Pagination.paginate(**params) do |page_params|
        target.public_send(method, *args, page_params)
      end
      block ? enum.each(&block) : enum
    end
  end
end
