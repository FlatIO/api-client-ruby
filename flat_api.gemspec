# -*- encoding: utf-8 -*-
#
=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML or MIDI files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and interoduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

OpenAPI spec version: 2.6.0
Contact: developers@flat.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "flat_api/version"

Gem::Specification.new do |s|
  s.name        = "flat_api"
  s.version     = FlatApi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Flat Team"]
  s.email       = ["developers@flat.io"]
  s.homepage    = "https://github.com/FlatIO/api-client-ruby"
  s.summary     = "Ruby Client for Flat REST API (https://flat.io)"
  s.description = "The Flat API allows you to easily extend the abilities of the Flat Platform (https://flat.io), with a wide range of use cases including the following:
- Creating and importing new music scores using MusicXML or MIDI files
- Browsing, updating, copying, exporting the user&#39;s scores (for example in MP3, WAV or MIDI)
- Managing educational resources with Flat for Education: creating &amp; updating the organization accounts, the classes, rosters and assignments."
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'vcr', '>= 3.0.1', '~> 5.0'
  s.add_development_dependency 'webmock', '~> 1.24', '>= 1.24.3'
  s.add_development_dependency 'autotest', '>= 4.4.6', '~> 5.0'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
