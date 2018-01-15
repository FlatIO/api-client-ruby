# FlatApi::GroupApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_group_details**](GroupApi.md#get_group_details) | **GET** /groups/{group} | Get group information
[**get_group_scores**](GroupApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group&#39;s scores
[**list_group_users**](GroupApi.md#list_group_users) | **GET** /groups/{group}/users | List group&#39;s users


# **get_group_details**
> GroupDetails get_group_details(group)

Get group information

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new

group = "group_example" # String | Unique identifier of a Flat group 


begin
  #Get group information
  result = api_instance.get_group_details(group)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling GroupApi->get_group_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| Unique identifier of a Flat group  | 

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_group_scores**
> Array&lt;ScoreDetails&gt; get_group_scores(group, opts)

List group's scores

Get the list of scores shared with a group. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new

group = "group_example" # String | Unique identifier of a Flat group 

opts = { 
  parent: "parent_example" # String | Filter the score forked from the score id `parent`
}

begin
  #List group's scores
  result = api_instance.get_group_scores(group, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling GroupApi->get_group_scores: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| Unique identifier of a Flat group  | 
 **parent** | **String**| Filter the score forked from the score id &#x60;parent&#x60; | [optional] 

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_group_users**
> Array&lt;UserPublic&gt; list_group_users(group)

List group's users

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::GroupApi.new

group = "group_example" # String | Unique identifier of a Flat group 


begin
  #List group's users
  result = api_instance.list_group_users(group)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling GroupApi->list_group_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group** | **String**| Unique identifier of a Flat group  | 

### Return type

[**Array&lt;UserPublic&gt;**](UserPublic.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



