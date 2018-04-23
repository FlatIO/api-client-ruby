# FlatApi::UserApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ger_user_likes**](UserApi.md#ger_user_likes) | **GET** /users/{user}/likes | List liked scores
[**get_user**](UserApi.md#get_user) | **GET** /users/{user} | Get a public user profile
[**get_user_scores**](UserApi.md#get_user_scores) | **GET** /users/{user}/scores | List user&#39;s scores


# **ger_user_likes**
> Array&lt;ScoreDetails&gt; ger_user_likes(user, opts)

List liked scores

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new

user = "user_example" # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 

opts = { 
  ids: true # BOOLEAN | Return only the identifiers of the scores
}

begin
  #List liked scores
  result = api_instance.ger_user_likes(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling UserApi->ger_user_likes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user.  | 
 **ids** | **BOOLEAN**| Return only the identifiers of the scores | [optional] 

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user**
> UserPublic get_user(user)

Get a public user profile

Get a public profile of a Flat User. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new

user = "user_example" # String | This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use `me` as a value instead of the current User unique identifier to work on the current authenticated user. 


begin
  #Get a public user profile
  result = api_instance.get_user(user)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use &#x60;me&#x60; as a value instead of the current User unique identifier to work on the current authenticated user.  | 

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_scores**
> Array&lt;ScoreDetails&gt; get_user_scores(user, opts)

List user's scores

Get the list of public scores owned by a User.  **DEPRECATED**: Please note that the current behavior will be deprecrated on **2019-01-01**. This method will no longer list private and shared scores, but only public scores of a Flat account. If you want to access to private scores, please use the [Collections API](#tag/Collection) instead. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new

user = "user_example" # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 

opts = { 
  parent: "parent_example" # String | Filter the score forked from the score id `parent`
}

begin
  #List user's scores
  result = api_instance.get_user_scores(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling UserApi->get_user_scores: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user.  | 
 **parent** | **String**| Filter the score forked from the score id &#x60;parent&#x60; | [optional] 

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



