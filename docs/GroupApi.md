# FlatApi::GroupApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_group_details**](GroupApi.md#get_group_details) | **GET** /groups/{group} | Get group information |
| [**get_group_scores**](GroupApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group&#39;s scores |
| [**list_group_users**](GroupApi.md#list_group_users) | **GET** /groups/{group}/users | List group&#39;s users |


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
  parent: 'parent_example' # String | Filter the score forked from the score id `parent`
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
| **parent** | **String** | Filter the score forked from the score id &#x60;parent&#x60; | [optional] |

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

