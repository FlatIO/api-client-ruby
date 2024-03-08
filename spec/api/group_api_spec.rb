=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML, MIDI, Guitar Pro (GP3, GP4, GP5, GPX, GP), PowerTab, TuxGuitar and MuseScore files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and introduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

The version of the OpenAPI document: 2.20.0
Contact: developers@flat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FlatApi::GroupApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GroupApi' do
  before do
    # run before each test
    @api_instance = FlatApi::GroupApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupApi' do
    it 'should create an instance of GroupApi' do
      expect(@api_instance).to be_instance_of(FlatApi::GroupApi)
    end
  end

  # unit tests for get_group_details
  # Get group information
  # @param group Unique identifier of a Flat group 
  # @param [Hash] opts the optional parameters
  # @return [GroupDetails]
  describe 'get_group_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_group_scores
  # List group&#39;s scores
  # Get the list of scores shared with a group. 
  # @param group Unique identifier of a Flat group 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent Filter the score forked from the score id &#x60;parent&#x60;
  # @return [Array<ScoreDetails>]
  describe 'get_group_scores test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_group_users
  # List group&#39;s users
  # @param group Unique identifier of a Flat group 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :source Filter the users by their source 
  # @return [Array<UserPublic>]
  describe 'list_group_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
