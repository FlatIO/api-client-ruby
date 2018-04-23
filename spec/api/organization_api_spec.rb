=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML or MIDI files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and interoduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

OpenAPI spec version: 2.6.0
Contact: developers@flat.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for FlatApi::OrganizationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrganizationApi' do
  before do
    # run before each test
    @instance = FlatApi::OrganizationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrganizationApi' do
    it 'should create an instance of OrganizationApi' do
      expect(@instance).to be_instance_of(FlatApi::OrganizationApi)
    end
  end

  # unit tests for create_lti_credentials
  # Create a new couple of LTI 1.x credentials
  # Flat for Education is a Certified LTI Provider. You can use these API methods to automate the creation of LTI credentials. You can read more about our LTI implementation, supported components and LTI Endpoints in our [Developer Documentation](https://flat.io/developers/docs/lti/). 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [LtiCredentials]
  describe 'create_lti_credentials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_organization_invitation
  # Create a new invitation to join the organization
  # This method creates and sends invitation for teachers and admins.  Invitations can only be used by new Flat users or users who are not part of the organization yet.  If the email of the user is already associated to a user of your organization, the API will simply update the role of the existing user and won&#39;t send an invitation. In this case, the property &#x60;usedBy&#x60; will be directly filled with the uniquer identifier of the corresponding user. 
  # @param [Hash] opts the optional parameters
  # @option opts [OrganizationInvitationCreation] :body 
  # @return [OrganizationInvitation]
  describe 'create_organization_invitation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_organization_user
  # Create a new user account
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [UserCreation] :body 
  # @return [UserDetailsAdmin]
  describe 'create_organization_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_lti_credentials
  # List LTI 1.x credentials
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<LtiCredentials>]
  describe 'list_lti_credentials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_organization_invitations
  # List the organization invitations
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :role Filter users by role
  # @option opts [Integer] :limit This is the maximum number of objects that may be returned
  # @option opts [String] :_next An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @option opts [String] :previous An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @return [Array<OrganizationInvitation>]
  describe 'list_organization_invitations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_organization_users
  # List the organization users
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :role Filter users by role
  # @option opts [Integer] :limit This is the maximum number of objects that may be returned
  # @option opts [String] :_next An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @option opts [String] :previous An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @return [Array<UserDetailsAdmin>]
  describe 'list_organization_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_organization_invitation
  # Remove an organization invitation
  # 
  # @param invitation Unique identifier of the invitation
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_organization_invitation test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_organization_user
  # Remove an account from Flat
  # This operation removes an account from Flat and its data, including: * The music scores created by this user (documents, history, comments, collaboration information) * Education related data (assignments and classroom information) 
  # @param user Unique identifier of the Flat account 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :convert_to_individual If &#x60;true&#x60;, the account will be only removed from the organization and converted into an individual account on our public website, https://flat.io. This operation will remove the education-related data from the account. Before realizing this operation, you need to be sure that the user is at least 13 years old and that this one has read and agreed to the Individual Terms of Services of Flat available on https://flat.io/legal. 
  # @return [nil]
  describe 'remove_organization_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for revoke_lti_credentials
  # Revoke LTI 1.x credentials
  # 
  # @param credentials Credentials unique identifier 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'revoke_lti_credentials test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_organization_user
  # Update account information
  # 
  # @param user Unique identifier of the Flat account 
  # @param body 
  # @param [Hash] opts the optional parameters
  # @return [UserDetailsAdmin]
  describe 'update_organization_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
