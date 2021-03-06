=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML or MIDI files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and interoduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

OpenAPI spec version: 2.6.0
Contact: developers@flat.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module FlatApi
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List liked scores
    # 
    # @param user Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user. 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :ids Return only the identifiers of the scores
    # @return [Array<ScoreDetails>]
    def ger_user_likes(user, opts = {})
      data, _status_code, _headers = ger_user_likes_with_http_info(user, opts)
      return data
    end

    # List liked scores
    # 
    # @param user Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user. 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :ids Return only the identifiers of the scores
    # @return [Array<(Array<ScoreDetails>, Fixnum, Hash)>] Array<ScoreDetails> data, response status code and response headers
    def ger_user_likes_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.ger_user_likes ..."
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UserApi.ger_user_likes"
      end
      # resource path
      local_var_path = "/users/{user}/likes".sub('{' + 'user' + '}', user.to_s)

      # query parameters
      query_params = {}
      query_params[:'ids'] = opts[:'ids'] if !opts[:'ids'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ScoreDetails>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#ger_user_likes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a public user profile
    # Get a public profile of a Flat User. 
    # @param user This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use &#x60;me&#x60; as a value instead of the current User unique identifier to work on the current authenticated user. 
    # @param [Hash] opts the optional parameters
    # @return [UserPublic]
    def get_user(user, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user, opts)
      return data
    end

    # Get a public user profile
    # Get a public profile of a Flat User. 
    # @param user This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use &#x60;me&#x60; as a value instead of the current User unique identifier to work on the current authenticated user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserPublic, Fixnum, Hash)>] UserPublic data, response status code and response headers
    def get_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.get_user ..."
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UserApi.get_user"
      end
      # resource path
      local_var_path = "/users/{user}".sub('{' + 'user' + '}', user.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserPublic')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List user's scores
    # Get the list of public scores owned by a User.  **DEPRECATED**: Please note that the current behavior will be deprecrated on **2019-01-01**. This method will no longer list private and shared scores, but only public scores of a Flat account. If you want to access to private scores, please use the [Collections API](#tag/Collection) instead. 
    # @param user Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :parent Filter the score forked from the score id &#x60;parent&#x60;
    # @return [Array<ScoreDetails>]
    def get_user_scores(user, opts = {})
      data, _status_code, _headers = get_user_scores_with_http_info(user, opts)
      return data
    end

    # List user&#39;s scores
    # Get the list of public scores owned by a User.  **DEPRECATED**: Please note that the current behavior will be deprecrated on **2019-01-01**. This method will no longer list private and shared scores, but only public scores of a Flat account. If you want to access to private scores, please use the [Collections API](#tag/Collection) instead. 
    # @param user Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :parent Filter the score forked from the score id &#x60;parent&#x60;
    # @return [Array<(Array<ScoreDetails>, Fixnum, Hash)>] Array<ScoreDetails> data, response status code and response headers
    def get_user_scores_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.get_user_scores ..."
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UserApi.get_user_scores"
      end
      # resource path
      local_var_path = "/users/{user}/scores".sub('{' + 'user' + '}', user.to_s)

      # query parameters
      query_params = {}
      query_params[:'parent'] = opts[:'parent'] if !opts[:'parent'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['OAuth2']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ScoreDetails>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_user_scores\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
