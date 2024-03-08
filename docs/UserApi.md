# FlatApi::UserApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user**](UserApi.md#get_user) | **GET** /users/{user} | Get a public user profile |
| [**get_user_likes**](UserApi.md#get_user_likes) | **GET** /users/{user}/likes | List liked scores |
| [**get_user_scores**](UserApi.md#get_user_scores) | **GET** /users/{user}/scores | List user&#39;s scores |


## get_user

> <UserPublic> get_user(user)

Get a public user profile

Get a profile of a Flat or Flat for Education User. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new
user = 'user_example' # String | This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use `me` as a value instead of the current User unique identifier to work on the current authenticated user. 

begin
  # Get a public user profile
  result = api_instance.get_user(user)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserPublic>, Integer, Hash)> get_user_with_http_info(user)

```ruby
begin
  # Get a public user profile
  data, status_code, headers = api_instance.get_user_with_http_info(user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserPublic>
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | This route parameter is the unique identifier of the user. You can specify an email instead of an unique identifier. If you are executing this request authenticated, you can use &#x60;me&#x60; as a value instead of the current User unique identifier to work on the current authenticated user.  |  |

### Return type

[**UserPublic**](UserPublic.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_likes

> <Array<ScoreDetails>> get_user_likes(user, opts)

List liked scores

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new
user = 'user_example' # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 
opts = {
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example', # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  ids: true # Boolean | Return only the identifiers of the scores
}

begin
  # List liked scores
  result = api_instance.get_user_likes(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user_likes: #{e}"
end
```

#### Using the get_user_likes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreDetails>>, Integer, Hash)> get_user_likes_with_http_info(user, opts)

```ruby
begin
  # List liked scores
  data, status_code, headers = api_instance.get_user_likes_with_http_info(user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user_likes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user.  |  |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 25] |
| **ids** | **Boolean** | Return only the identifiers of the scores | [optional] |

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_scores

> <Array<ScoreDetails>> get_user_scores(user, opts)

List user's scores

Get the list of public scores owned by a User.  **DEPRECATED**: Please note that the current behavior will be deprecrated on **2019-01-01**. This method will no longer list private and shared scores, but only public scores of a Flat account. If you want to access to private scores, please use the [Collections API](#tag/Collection) instead. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::UserApi.new
user = 'user_example' # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 
opts = {
  parent: 'parent_example' # String | Filter the score forked from the score id `parent`
}

begin
  # List user's scores
  result = api_instance.get_user_scores(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user_scores: #{e}"
end
```

#### Using the get_user_scores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreDetails>>, Integer, Hash)> get_user_scores_with_http_info(user, opts)

```ruby
begin
  # List user's scores
  data, status_code, headers = api_instance.get_user_scores_with_http_info(user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling UserApi->get_user_scores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of a Flat user. If you authenticated, you can use &#x60;me&#x60; to refer to the current user.  |  |
| **parent** | **String** | Filter the score forked from the score id &#x60;parent&#x60; | [optional] |

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

