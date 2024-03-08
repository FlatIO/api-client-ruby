# FlatApi::EduResourcesApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**copy_edu_resource**](EduResourcesApi.md#copy_edu_resource) | **POST** /eduResources/{resource}/copy | Copy an education resource to a Resource Library |
| [**copy_edu_resource_to_demo_class**](EduResourcesApi.md#copy_edu_resource_to_demo_class) | **POST** /eduResources/{resource}/copyToDemoClass | Copy an education assignment to a teacher demo class |
| [**create_edu_resource**](EduResourcesApi.md#create_edu_resource) | **POST** /eduResources | Create a new education resource |
| [**create_edu_resource_lti_link**](EduResourcesApi.md#create_edu_resource_lti_link) | **POST** /eduResources/{resource}/createLtiLink | Create an LTI link for an education resource |
| [**delete_edu_resource**](EduResourcesApi.md#delete_edu_resource) | **DELETE** /eduResources/{resource} | Delete an education resource |
| [**get_edu_resource**](EduResourcesApi.md#get_edu_resource) | **GET** /eduResources/{resource} | Get an education resource |
| [**list_edu_libraries**](EduResourcesApi.md#list_edu_libraries) | **GET** /eduResources/libraries | List the education libraries |
| [**list_edu_resources**](EduResourcesApi.md#list_edu_resources) | **GET** /eduResources | List education resources in a library or folder |
| [**move_edu_resource**](EduResourcesApi.md#move_edu_resource) | **POST** /eduResources/{resource}/move | Move an education resource |
| [**update_edu_resource**](EduResourcesApi.md#update_edu_resource) | **PUT** /eduResources/{resource} | Update an education resource metadata |
| [**update_edu_resource_assignment**](EduResourcesApi.md#update_edu_resource_assignment) | **PUT** /eduResources/{resource}/assignment | Update an education resource assignment |
| [**use_edu_resource_in_class**](EduResourcesApi.md#use_edu_resource_in_class) | **POST** /eduResources/{resource}/useInClass | Use an education resource in a class |


## copy_edu_resource

> <EduResource> copy_edu_resource(resource, edu_resource_copy)

Copy an education resource to a Resource Library

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource
edu_resource_copy = FlatApi::EduResourceCopy.new({destination: 'destination_example'}) # EduResourceCopy | 

begin
  # Copy an education resource to a Resource Library
  result = api_instance.copy_edu_resource(resource, edu_resource_copy)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->copy_edu_resource: #{e}"
end
```

#### Using the copy_edu_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResource>, Integer, Hash)> copy_edu_resource_with_http_info(resource, edu_resource_copy)

```ruby
begin
  # Copy an education resource to a Resource Library
  data, status_code, headers = api_instance.copy_edu_resource_with_http_info(resource, edu_resource_copy)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResource>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->copy_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |
| **edu_resource_copy** | [**EduResourceCopy**](EduResourceCopy.md) |  |  |

### Return type

[**EduResource**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## copy_edu_resource_to_demo_class

> <ClassAssignment> copy_edu_resource_to_demo_class(resource)

Copy an education assignment to a teacher demo class

Once a resource library can be published to a class (`Assignment.capabilities.canPublishInClass = true`), this endpoint can be used for the feature \"View as student\".  It will ensure the teacher has a demo class, then copy the assignment to the demo class. You can then use `POST /classes/{class}/testStudent` to create a testing student account in the demo class. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource

begin
  # Copy an education assignment to a teacher demo class
  result = api_instance.copy_edu_resource_to_demo_class(resource)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->copy_edu_resource_to_demo_class: #{e}"
end
```

#### Using the copy_edu_resource_to_demo_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassAssignment>, Integer, Hash)> copy_edu_resource_to_demo_class_with_http_info(resource)

```ruby
begin
  # Copy an education assignment to a teacher demo class
  data, status_code, headers = api_instance.copy_edu_resource_to_demo_class_with_http_info(resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassAssignment>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->copy_edu_resource_to_demo_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |

### Return type

[**ClassAssignment**](ClassAssignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_edu_resource

> <EduResource> create_edu_resource(edu_resource_creation)

Create a new education resource

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
edu_resource_creation = FlatApi::EduResourceCreation.new({type: FlatApi::EduResourceType::ASSIGNMENT, title: 'title_example'}) # EduResourceCreation | 

begin
  # Create a new education resource
  result = api_instance.create_edu_resource(edu_resource_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->create_edu_resource: #{e}"
end
```

#### Using the create_edu_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResource>, Integer, Hash)> create_edu_resource_with_http_info(edu_resource_creation)

```ruby
begin
  # Create a new education resource
  data, status_code, headers = api_instance.create_edu_resource_with_http_info(edu_resource_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResource>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->create_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edu_resource_creation** | [**EduResourceCreation**](EduResourceCreation.md) |  |  |

### Return type

[**EduResource**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_edu_resource_lti_link

> <EduResourceLtiLink> create_edu_resource_lti_link(resource)

Create an LTI link for an education resource

This endpoint will return an LTI link that can be used to launch Flat for Education. The link, in a context from a class, will ensure the assignment has been copied in the class. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource

begin
  # Create an LTI link for an education resource
  result = api_instance.create_edu_resource_lti_link(resource)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->create_edu_resource_lti_link: #{e}"
end
```

#### Using the create_edu_resource_lti_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResourceLtiLink>, Integer, Hash)> create_edu_resource_lti_link_with_http_info(resource)

```ruby
begin
  # Create an LTI link for an education resource
  data, status_code, headers = api_instance.create_edu_resource_lti_link_with_http_info(resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResourceLtiLink>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->create_edu_resource_lti_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |

### Return type

[**EduResourceLtiLink**](EduResourceLtiLink.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_edu_resource

> delete_edu_resource(resource)

Delete an education resource

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource

begin
  # Delete an education resource
  api_instance.delete_edu_resource(resource)
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->delete_edu_resource: #{e}"
end
```

#### Using the delete_edu_resource_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_edu_resource_with_http_info(resource)

```ruby
begin
  # Delete an education resource
  data, status_code, headers = api_instance.delete_edu_resource_with_http_info(resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->delete_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_edu_resource

> <EduResource> get_edu_resource(resource)

Get an education resource

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource

begin
  # Get an education resource
  result = api_instance.get_edu_resource(resource)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->get_edu_resource: #{e}"
end
```

#### Using the get_edu_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResource>, Integer, Hash)> get_edu_resource_with_http_info(resource)

```ruby
begin
  # Get an education resource
  data, status_code, headers = api_instance.get_edu_resource_with_http_info(resource)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResource>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->get_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |

### Return type

[**EduResource**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_edu_libraries

> <Array<EduLibrary>> list_edu_libraries

List the education libraries

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new

begin
  # List the education libraries
  result = api_instance.list_edu_libraries
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->list_edu_libraries: #{e}"
end
```

#### Using the list_edu_libraries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EduLibrary>>, Integer, Hash)> list_edu_libraries_with_http_info

```ruby
begin
  # List the education libraries
  data, status_code, headers = api_instance.list_edu_libraries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EduLibrary>>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->list_edu_libraries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EduLibrary&gt;**](EduLibrary.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_edu_resources

> <Array<EduResource>> list_edu_resources(opts)

List education resources in a library or folder

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
opts = {
  parent: 'parent_example', # String | List the resources contained in this `parent` library or folder 
  type: 'assignment', # String | Filter the returned resources by type 
  sort: 'creationDate', # String | Sort
  direction: 'asc', # String | Sort direction
  limit: 56, # Integer | This is the maximum number of resources that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example' # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  # List education resources in a library or folder
  result = api_instance.list_edu_resources(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->list_edu_resources: #{e}"
end
```

#### Using the list_edu_resources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EduResource>>, Integer, Hash)> list_edu_resources_with_http_info(opts)

```ruby
begin
  # List education resources in a library or folder
  data, status_code, headers = api_instance.list_edu_resources_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EduResource>>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->list_edu_resources_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent** | **String** | List the resources contained in this &#x60;parent&#x60; library or folder  | [optional][default to &#39;root&#39;] |
| **type** | **String** | Filter the returned resources by type  | [optional] |
| **sort** | **String** | Sort | [optional][default to &#39;creationDate&#39;] |
| **direction** | **String** | Sort direction | [optional] |
| **limit** | **Integer** | This is the maximum number of resources that may be returned | [optional][default to 25] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |

### Return type

[**Array&lt;EduResource&gt;**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## move_edu_resource

> <EduResource> move_edu_resource(resource, edu_resource_move)

Move an education resource

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource
edu_resource_move = FlatApi::EduResourceMove.new({destination: 'destination_example'}) # EduResourceMove | 

begin
  # Move an education resource
  result = api_instance.move_edu_resource(resource, edu_resource_move)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->move_edu_resource: #{e}"
end
```

#### Using the move_edu_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResource>, Integer, Hash)> move_edu_resource_with_http_info(resource, edu_resource_move)

```ruby
begin
  # Move an education resource
  data, status_code, headers = api_instance.move_edu_resource_with_http_info(resource, edu_resource_move)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResource>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->move_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |
| **edu_resource_move** | [**EduResourceMove**](EduResourceMove.md) |  |  |

### Return type

[**EduResource**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_edu_resource

> <EduResource> update_edu_resource(resource, edu_resource_update)

Update an education resource metadata

Update any resources metadata (e.g. title).  Use this method to rename education resources folders or assignments. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource
edu_resource_update = FlatApi::EduResourceUpdate.new # EduResourceUpdate | 

begin
  # Update an education resource metadata
  result = api_instance.update_edu_resource(resource, edu_resource_update)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->update_edu_resource: #{e}"
end
```

#### Using the update_edu_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EduResource>, Integer, Hash)> update_edu_resource_with_http_info(resource, edu_resource_update)

```ruby
begin
  # Update an education resource metadata
  data, status_code, headers = api_instance.update_edu_resource_with_http_info(resource, edu_resource_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EduResource>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->update_edu_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |
| **edu_resource_update** | [**EduResourceUpdate**](EduResourceUpdate.md) |  |  |

### Return type

[**EduResource**](EduResource.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_edu_resource_assignment

> <Assignment> update_edu_resource_assignment(resource, assignment_update)

Update an education resource assignment

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource
assignment_update = FlatApi::AssignmentUpdate.new # AssignmentUpdate | 

begin
  # Update an education resource assignment
  result = api_instance.update_edu_resource_assignment(resource, assignment_update)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->update_edu_resource_assignment: #{e}"
end
```

#### Using the update_edu_resource_assignment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Assignment>, Integer, Hash)> update_edu_resource_assignment_with_http_info(resource, assignment_update)

```ruby
begin
  # Update an education resource assignment
  data, status_code, headers = api_instance.update_edu_resource_assignment_with_http_info(resource, assignment_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Assignment>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->update_edu_resource_assignment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |
| **assignment_update** | [**AssignmentUpdate**](AssignmentUpdate.md) |  |  |

### Return type

[**Assignment**](Assignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## use_edu_resource_in_class

> <ClassAssignment> use_edu_resource_in_class(resource, edu_resource_use_in_class)

Use an education resource in a class

This endpoint will copy a resource and the underlying resources. The assignment will be created as a draft that can be completed with other options before publishing (e.g. due date, publication date for scheduling, etc.). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::EduResourcesApi.new
resource = 'resource_example' # String | Unique identifier of the resource
edu_resource_use_in_class = FlatApi::EduResourceUseInClass.new({classroom: 'classroom_example'}) # EduResourceUseInClass | 

begin
  # Use an education resource in a class
  result = api_instance.use_edu_resource_in_class(resource, edu_resource_use_in_class)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->use_edu_resource_in_class: #{e}"
end
```

#### Using the use_edu_resource_in_class_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClassAssignment>, Integer, Hash)> use_edu_resource_in_class_with_http_info(resource, edu_resource_use_in_class)

```ruby
begin
  # Use an education resource in a class
  data, status_code, headers = api_instance.use_edu_resource_in_class_with_http_info(resource, edu_resource_use_in_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClassAssignment>
rescue FlatApi::ApiError => e
  puts "Error when calling EduResourcesApi->use_edu_resource_in_class_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | Unique identifier of the resource |  |
| **edu_resource_use_in_class** | [**EduResourceUseInClass**](EduResourceUseInClass.md) |  |  |

### Return type

[**ClassAssignment**](ClassAssignment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

