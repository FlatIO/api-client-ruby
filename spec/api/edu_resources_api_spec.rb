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

# Unit tests for FlatApi::EduResourcesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EduResourcesApi' do
  before do
    # run before each test
    @api_instance = FlatApi::EduResourcesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EduResourcesApi' do
    it 'should create an instance of EduResourcesApi' do
      expect(@api_instance).to be_instance_of(FlatApi::EduResourcesApi)
    end
  end

  # unit tests for copy_edu_resource
  # Copy an education resource to a Resource Library
  # @param resource Unique identifier of the resource
  # @param edu_resource_copy 
  # @param [Hash] opts the optional parameters
  # @return [EduResource]
  describe 'copy_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for copy_edu_resource_to_demo_class
  # Copy an education assignment to a teacher demo class
  # Once a resource library can be published to a class (&#x60;Assignment.capabilities.canPublishInClass &#x3D; true&#x60;), this endpoint can be used for the feature \&quot;View as student\&quot;.  It will ensure the teacher has a demo class, then copy the assignment to the demo class. You can then use &#x60;POST /classes/{class}/testStudent&#x60; to create a testing student account in the demo class. 
  # @param resource Unique identifier of the resource
  # @param [Hash] opts the optional parameters
  # @return [ClassAssignment]
  describe 'copy_edu_resource_to_demo_class test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_edu_resource
  # Create a new education resource
  # @param edu_resource_creation 
  # @param [Hash] opts the optional parameters
  # @return [EduResource]
  describe 'create_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_edu_resource_lti_link
  # Create an LTI link for an education resource
  # This endpoint will return an LTI link that can be used to launch Flat for Education. The link, in a context from a class, will ensure the assignment has been copied in the class. 
  # @param resource Unique identifier of the resource
  # @param [Hash] opts the optional parameters
  # @return [EduResourceLtiLink]
  describe 'create_edu_resource_lti_link test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_edu_resource
  # Delete an education resource
  # @param resource Unique identifier of the resource
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_edu_resource
  # Get an education resource
  # @param resource Unique identifier of the resource
  # @param [Hash] opts the optional parameters
  # @return [EduResource]
  describe 'get_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_edu_libraries
  # List the education libraries
  # @param [Hash] opts the optional parameters
  # @return [Array<EduLibrary>]
  describe 'list_edu_libraries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_edu_resources
  # List education resources in a library or folder
  # @param [Hash] opts the optional parameters
  # @option opts [String] :parent List the resources contained in this &#x60;parent&#x60; library or folder 
  # @option opts [String] :type Filter the returned resources by type 
  # @option opts [String] :sort Sort
  # @option opts [String] :direction Sort direction
  # @option opts [Integer] :limit This is the maximum number of resources that may be returned
  # @option opts [String] :_next An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @option opts [String] :previous An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data. 
  # @return [Array<EduResource>]
  describe 'list_edu_resources test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for move_edu_resource
  # Move an education resource
  # @param resource Unique identifier of the resource
  # @param edu_resource_move 
  # @param [Hash] opts the optional parameters
  # @return [EduResource]
  describe 'move_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_edu_resource
  # Update an education resource metadata
  # Update any resources metadata (e.g. title).  Use this method to rename education resources folders or assignments. 
  # @param resource Unique identifier of the resource
  # @param edu_resource_update 
  # @param [Hash] opts the optional parameters
  # @return [EduResource]
  describe 'update_edu_resource test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_edu_resource_assignment
  # Update an education resource assignment
  # @param resource Unique identifier of the resource
  # @param assignment_update 
  # @param [Hash] opts the optional parameters
  # @return [Assignment]
  describe 'update_edu_resource_assignment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for use_edu_resource_in_class
  # Use an education resource in a class
  # This endpoint will copy a resource and the underlying resources. The assignment will be created as a draft that can be completed with other options before publishing (e.g. due date, publication date for scheduling, etc.). 
  # @param resource Unique identifier of the resource
  # @param edu_resource_use_in_class 
  # @param [Hash] opts the optional parameters
  # @return [ClassAssignment]
  describe 'use_edu_resource_in_class test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
