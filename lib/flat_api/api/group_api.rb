=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML, MIDI, Guitar Pro (GP3, GP4, GP5, GPX, GP), PowerTab, TuxGuitar and MuseScore files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and introduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

The version of the OpenAPI document: 2.20.0
Contact: developers@flat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module FlatApi
  class GroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get group information
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @return [GroupDetails]
    def get_group_details(group, opts = {})
      data, _status_code, _headers = get_group_details_with_http_info(group, opts)
      data
    end

    # Get group information
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupDetails, Integer, Hash)>] GroupDetails data, response status code and response headers
    def get_group_details_with_http_info(group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.get_group_details ...'
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupApi.get_group_details"
      end
      # resource path
      local_var_path = '/groups/{group}'.sub('{' + 'group' + '}', CGI.escape(group.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GroupDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"GroupApi.get_group_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#get_group_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List group's scores
    # Get the list of scores shared with a group. 
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :parent Filter the score forked from the score id &#x60;parent&#x60;
    # @return [Array<ScoreDetails>]
    def get_group_scores(group, opts = {})
      data, _status_code, _headers = get_group_scores_with_http_info(group, opts)
      data
    end

    # List group&#39;s scores
    # Get the list of scores shared with a group. 
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :parent Filter the score forked from the score id &#x60;parent&#x60;
    # @return [Array<(Array<ScoreDetails>, Integer, Hash)>] Array<ScoreDetails> data, response status code and response headers
    def get_group_scores_with_http_info(group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.get_group_scores ...'
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupApi.get_group_scores"
      end
      # resource path
      local_var_path = '/groups/{group}/scores'.sub('{' + 'group' + '}', CGI.escape(group.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'parent'] = opts[:'parent'] if !opts[:'parent'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ScoreDetails>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"GroupApi.get_group_scores",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#get_group_scores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List group's users
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Filter the users by their source 
    # @return [Array<UserPublic>]
    def list_group_users(group, opts = {})
      data, _status_code, _headers = list_group_users_with_http_info(group, opts)
      data
    end

    # List group&#39;s users
    # @param group [String] Unique identifier of a Flat group 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Filter the users by their source 
    # @return [Array<(Array<UserPublic>, Integer, Hash)>] Array<UserPublic> data, response status code and response headers
    def list_group_users_with_http_info(group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupApi.list_group_users ...'
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupApi.list_group_users"
      end
      allowable_values = ["googleClassroom", "microsoftGraph", "clever"]
      if @api_client.config.client_side_validation && opts[:'source'] && !allowable_values.include?(opts[:'source'])
        fail ArgumentError, "invalid value for \"source\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/groups/{group}/users'.sub('{' + 'group' + '}', CGI.escape(group.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<UserPublic>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"GroupApi.list_group_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupApi#list_group_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
