# FlatApi::AccountApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_authenticated_user**](AccountApi.md#get_authenticated_user) | **GET** /me | Get current user account |


## get_authenticated_user

> <UserDetails> get_authenticated_user(opts)

Get current user account

Get details about the current authenticated User. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::AccountApi.new
opts = {
  only_id: true # Boolean | Only return the user id
}

begin
  # Get current user account
  result = api_instance.get_authenticated_user(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling AccountApi->get_authenticated_user: #{e}"
end
```

#### Using the get_authenticated_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserDetails>, Integer, Hash)> get_authenticated_user_with_http_info(opts)

```ruby
begin
  # Get current user account
  data, status_code, headers = api_instance.get_authenticated_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling AccountApi->get_authenticated_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **only_id** | **Boolean** | Only return the user id | [optional][default to false] |

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

