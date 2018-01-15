# FlatApi::AccountApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_authenticated_user**](AccountApi.md#get_authenticated_user) | **GET** /me | Get current user profile


# **get_authenticated_user**
> UserDetails get_authenticated_user

Get current user profile

Get details about the current authenticated User. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::AccountApi.new

begin
  #Get current user profile
  result = api_instance.get_authenticated_user
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling AccountApi->get_authenticated_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



