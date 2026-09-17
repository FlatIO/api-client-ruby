# FlatApi::GroupApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_group_user**](GroupApi.md#add_group_user) | **POST** /groups/{group}/users | Add a student to a group |
| [**create_group**](GroupApi.md#create_group) | **POST** /groups | Create a new group |
| [**delete_group**](GroupApi.md#delete_group) | **DELETE** /groups/{group} | Delete a group |
| [**get_group_details**](GroupApi.md#get_group_details) | **GET** /groups/{group} | Get group information |
| [**get_group_scores**](GroupApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group&#39;s scores |
| [**list_group_users**](GroupApi.md#list_group_users) | **GET** /groups/{group}/users | List group&#39;s users |
| [**list_groups**](GroupApi.md#list_groups) | **GET** /groups | List groups |
| [**remove_group_user**](GroupApi.md#remove_group_user) | **DELETE** /groups/{group}/users/{user} | Remove a student from a class group |
| [**rename_group**](GroupApi.md#rename_group) | **PUT** /groups/{group} | Rename a group |


## add_group_user

> <AddGroupUser200Response> add_group_user(group, add_group_user_request)

Add a student to a group

Add a student to the specified group (must be in the same class)

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
add_group_user_request = FlatApi::AddGroupUserRequest.new({user: 'user_example'}) # AddGroupUserRequest | 

begin
  # Add a student to a group
  result = api_instance.add_group_user(group, add_group_user_request)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->add_group_user: #{e}"
end
```

#### Using the add_group_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddGroupUser200Response>, Integer, Hash)> add_group_user_with_http_info(group, add_group_user_request)

```ruby
begin
  # Add a student to a group
  data, status_code, headers = api_instance.add_group_user_with_http_info(group, add_group_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddGroupUser200Response>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->add_group_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |
| **add_group_user_request** | [**AddGroupUserRequest**](AddGroupUserRequest.md) |  |  |

### Return type

[**AddGroupUser200Response**](AddGroupUser200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_group

> <GroupDetails> create_group(group_creation)

Create a new group

Create a group of the given type, tied to a classroom, optionally with initial members. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group_creation = FlatApi::GroupCreation.new({type: 'classStudentsSubGroup', classroom: 'classroom_example'}) # GroupCreation | 

begin
  # Create a new group
  result = api_instance.create_group(group_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDetails>, Integer, Hash)> create_group_with_http_info(group_creation)

```ruby
begin
  # Create a new group
  data, status_code, headers = api_instance.create_group_with_http_info(group_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_creation** | [**GroupCreation**](GroupCreation.md) |  |  |

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> delete_group(group)

Delete a group

Delete a group. Only available to teachers of the classroom.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 

begin
  # Delete a group
  api_instance.delete_group(group)
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_group_with_http_info(group)

```ruby
begin
  # Delete a group
  data, status_code, headers = api_instance.delete_group_with_http_info(group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_details

> <GroupDetails> get_group_details(group)

Get group information

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 

begin
  # Get group information
  result = api_instance.get_group_details(group)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->get_group_details: #{e}"
end
```

#### Using the get_group_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDetails>, Integer, Hash)> get_group_details_with_http_info(group)

```ruby
begin
  # Get group information
  data, status_code, headers = api_instance.get_group_details_with_http_info(group)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->get_group_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group_scores

> <Array<ScoreDetails>> get_group_scores(group, opts)

List group's scores

Get the list of scores shared with a group. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
opts = {
  parent: 'parent_example' # String | Only return the scores forked from the score `parent`
}

begin
  # List group's scores
  result = api_instance.get_group_scores(group, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->get_group_scores: #{e}"
end
```

#### Using the get_group_scores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreDetails>>, Integer, Hash)> get_group_scores_with_http_info(group, opts)

```ruby
begin
  # List group's scores
  data, status_code, headers = api_instance.get_group_scores_with_http_info(group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->get_group_scores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |
| **parent** | **String** | Only return the scores forked from the score &#x60;parent&#x60; | [optional] |

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_group_users

> <Array<UserPublic>> list_group_users(group, opts)

List group's users

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
opts = {
  source: 'googleClassroom' # String | Filter the users by their source 
}

begin
  # List group's users
  result = api_instance.list_group_users(group, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->list_group_users: #{e}"
end
```

#### Using the list_group_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserPublic>>, Integer, Hash)> list_group_users_with_http_info(group, opts)

```ruby
begin
  # List group's users
  data, status_code, headers = api_instance.list_group_users_with_http_info(group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserPublic>>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->list_group_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |
| **source** | **String** | Filter the users by their source  | [optional] |

### Return type

[**Array&lt;UserPublic&gt;**](UserPublic.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_groups

> <Array<GroupDetails>> list_groups(type, opts)

List groups

List all groups of a given type, filtered by either a classroom or an assignment. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
type = 'classStudentsSubGroup' # String | 
opts = {
  classroom: 'classroom_example', # String | Classroom ID to filter by
  assignment: 'assignment_example' # String | Assignment ID to filter by
}

begin
  # List groups
  result = api_instance.list_groups(type, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->list_groups: #{e}"
end
```

#### Using the list_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GroupDetails>>, Integer, Hash)> list_groups_with_http_info(type, opts)

```ruby
begin
  # List groups
  data, status_code, headers = api_instance.list_groups_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GroupDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->list_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **classroom** | **String** | Classroom ID to filter by | [optional] |
| **assignment** | **String** | Assignment ID to filter by | [optional] |

### Return type

[**Array&lt;GroupDetails&gt;**](GroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_group_user

> remove_group_user(group, user)

Remove a student from a class group

Remove a student from a class group

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
user = 'user_example' # String | User ID

begin
  # Remove a student from a class group
  api_instance.remove_group_user(group, user)
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->remove_group_user: #{e}"
end
```

#### Using the remove_group_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_group_user_with_http_info(group, user)

```ruby
begin
  # Remove a student from a class group
  data, status_code, headers = api_instance.remove_group_user_with_http_info(group, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->remove_group_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |
| **user** | **String** | User ID |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rename_group

> <GroupDetails> rename_group(group, rename_group_request)

Rename a group

Rename a sub-group. Only available for class student groups.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
rename_group_request = FlatApi::RenameGroupRequest.new({name: 'name_example'}) # RenameGroupRequest | 

begin
  # Rename a group
  result = api_instance.rename_group(group, rename_group_request)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->rename_group: #{e}"
end
```

#### Using the rename_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GroupDetails>, Integer, Hash)> rename_group_with_http_info(group, rename_group_request)

```ruby
begin
  # Rename a group
  data, status_code, headers = api_instance.rename_group_with_http_info(group, rename_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GroupDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling GroupApi->rename_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | Unique identifier of a Flat group  |  |
| **rename_group_request** | [**RenameGroupRequest**](RenameGroupRequest.md) |  |  |

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

