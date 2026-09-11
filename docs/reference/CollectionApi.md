# FlatApi::CollectionApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_score_to_collection**](CollectionApi.md#add_score_to_collection) | **PUT** /collections/{collection}/scores/{score} | Add a score to the collection |
| [**create_collection**](CollectionApi.md#create_collection) | **POST** /collections | Create a new collection |
| [**delete_collection**](CollectionApi.md#delete_collection) | **DELETE** /collections/{collection} | Delete the collection |
| [**delete_score_from_collection**](CollectionApi.md#delete_score_from_collection) | **DELETE** /collections/{collection}/scores/{score} | Delete a score from the collection |
| [**edit_collection**](CollectionApi.md#edit_collection) | **PUT** /collections/{collection} | Update a collection&#39;s metadata |
| [**get_collection**](CollectionApi.md#get_collection) | **GET** /collections/{collection} | Get collection details |
| [**list_collection_scores**](CollectionApi.md#list_collection_scores) | **GET** /collections/{collection}/scores | List the scores contained in a collection |
| [**list_collections**](CollectionApi.md#list_collections) | **GET** /collections | List the collections |
| [**untrash_collection**](CollectionApi.md#untrash_collection) | **POST** /collections/{collection}/untrash | Untrash a collection |


## add_score_to_collection

> <ScoreDetails> add_score_to_collection(collection, score, opts)

Add a score to the collection

This operation will add a score to a collection. The default behavior will make the score available across multiple collections. You must have the capability `canAddScores` on the provided `collection` to perform the action. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted 
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Add a score to the collection
  result = api_instance.add_score_to_collection(collection, score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->add_score_to_collection: #{e}"
end
```

#### Using the add_score_to_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreDetails>, Integer, Hash)> add_score_to_collection_with_http_info(collection, score, opts)

```ruby
begin
  # Add a score to the collection
  data, status_code, headers = api_instance.add_score_to_collection_with_http_info(collection, score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->add_score_to_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  |  |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## create_collection

> <Collection> create_collection(body)

Create a new collection

This method will create a new collection in your account. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
body = FlatApi::CollectionCreation.new # CollectionCreation | 

begin
  # Create a new collection
  result = api_instance.create_collection(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->create_collection: #{e}"
end
```

#### Using the create_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> create_collection_with_http_info(body)

```ruby
begin
  # Create a new collection
  data, status_code, headers = api_instance.create_collection_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->create_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**CollectionCreation**](CollectionCreation.md) |  |  |

### Return type

[**Collection**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_collection

> delete_collection(collection)

Delete the collection

This method will schedule the deletion of the collection. Until deleted, the collection will be available in the `trash`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted  The following virtual collections are supported: - `allScores`: All the scores contained in the user account - `collaborations`: All shared scores by the user or someone else - `likes`: Liked scores 

begin
  # Delete the collection
  api_instance.delete_collection(collection)
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->delete_collection: #{e}"
end
```

#### Using the delete_collection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_collection_with_http_info(collection)

```ruby
begin
  # Delete the collection
  data, status_code, headers = api_instance.delete_collection_with_http_info(collection)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->delete_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  The following virtual collections are supported: - &#x60;allScores&#x60;: All the scores contained in the user account - &#x60;collaborations&#x60;: All shared scores by the user or someone else - &#x60;likes&#x60;: Liked scores  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_score_from_collection

> delete_score_from_collection(collection, score, opts)

Delete a score from the collection

This method will delete a score from the collection. Unlike [`DELETE /scores/{score}`](#operation/deleteScore), this score will not remove the score from your account, but only from the collection. This can be used to *move* a score from one collection to another, or simply remove a score from one collection when this one is contained in multiple collections. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted 
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  event_properties: '{"context":"discover","screenLevel0":"home","screenRoute":"/discover"}', # String | Optional analytics properties merged into XP tracking for this request.  JSON-encoded string representing event properties. Example:  - `?eventProperties={\"context\":\"discover\",\"screenLevel0\":\"home\"}` 
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Delete a score from the collection
  api_instance.delete_score_from_collection(collection, score, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->delete_score_from_collection: #{e}"
end
```

#### Using the delete_score_from_collection_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_score_from_collection_with_http_info(collection, score, opts)

```ruby
begin
  # Delete a score from the collection
  data, status_code, headers = api_instance.delete_score_from_collection_with_http_info(collection, score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->delete_score_from_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  |  |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **event_properties** | **String** | Optional analytics properties merged into XP tracking for this request.  JSON-encoded string representing event properties. Example:  - &#x60;?eventProperties&#x3D;{\&quot;context\&quot;:\&quot;discover\&quot;,\&quot;screenLevel0\&quot;:\&quot;home\&quot;}&#x60;  | [optional] |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## edit_collection

> <Collection> edit_collection(collection, body)

Update a collection's metadata

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted  The following virtual collections are supported: - `allScores`: All the scores contained in the user account - `collaborations`: All shared scores by the user or someone else - `likes`: Liked scores 
body = FlatApi::CollectionModification.new # CollectionModification | 

begin
  # Update a collection's metadata
  result = api_instance.edit_collection(collection, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->edit_collection: #{e}"
end
```

#### Using the edit_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> edit_collection_with_http_info(collection, body)

```ruby
begin
  # Update a collection's metadata
  data, status_code, headers = api_instance.edit_collection_with_http_info(collection, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->edit_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  The following virtual collections are supported: - &#x60;allScores&#x60;: All the scores contained in the user account - &#x60;collaborations&#x60;: All shared scores by the user or someone else - &#x60;likes&#x60;: Liked scores  |  |
| **body** | [**CollectionModification**](CollectionModification.md) |  |  |

### Return type

[**Collection**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_collection

> <Collection> get_collection(collection, opts)

Get collection details

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted  The following virtual collections are supported: - `allScores`: All the scores contained in the user account - `collaborations`: All shared scores by the user or someone else - `likes`: Liked scores 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Get collection details
  result = api_instance.get_collection(collection, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->get_collection: #{e}"
end
```

#### Using the get_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Collection>, Integer, Hash)> get_collection_with_http_info(collection, opts)

```ruby
begin
  # Get collection details
  data, status_code, headers = api_instance.get_collection_with_http_info(collection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Collection>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->get_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  The following virtual collections are supported: - &#x60;allScores&#x60;: All the scores contained in the user account - &#x60;collaborations&#x60;: All shared scores by the user or someone else - &#x60;likes&#x60;: Liked scores  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**Collection**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_collection_scores

> <Array<ScoreDetails>> list_collection_scores(collection, opts)

List the scores contained in a collection

Use this method to list the scores contained in a collection. If no sort option is provided, the scores are sorted by `modificationDate` `desc`.  For example, to list the scores contained in your app collection, you can use `GET /v2/collections/app/scores`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.  The following collection aliases are supported: - `root`: **Deprecated.** The root collection of the account - `app`: Alias for the current app collection - `trash`: Automatically contains resources that have been deleted  The following virtual collections are supported: - `allScores`: All the scores contained in the user account - `collaborations`: All shared scores by the user or someone else - `likes`: Liked scores 
opts = {
  sort: 'creationDate', # String | Sort
  direction: 'asc', # String | Sort direction
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example', # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # List the scores contained in a collection
  result = api_instance.list_collection_scores(collection, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->list_collection_scores: #{e}"
end
```

#### Using the list_collection_scores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreDetails>>, Integer, Hash)> list_collection_scores_with_http_info(collection, opts)

```ruby
begin
  # List the scores contained in a collection
  data, status_code, headers = api_instance.list_collection_scores_with_http_info(collection, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreDetails>>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->list_collection_scores_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection.  The following collection aliases are supported: - &#x60;root&#x60;: **Deprecated.** The root collection of the account - &#x60;app&#x60;: Alias for the current app collection - &#x60;trash&#x60;: Automatically contains resources that have been deleted  The following virtual collections are supported: - &#x60;allScores&#x60;: All the scores contained in the user account - &#x60;collaborations&#x60;: All shared scores by the user or someone else - &#x60;likes&#x60;: Liked scores  |  |
| **sort** | **String** | Sort | [optional] |
| **direction** | **String** | Sort direction | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 25] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**Array&lt;ScoreDetails&gt;**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_collections

> <Array<Collection>> list_collections(opts)

List the collections

Use this method to list the user's collections. If no sort option is provided, the collections are sorted by `creationDate` `desc`.  By default (`parent=user`), this returns all user account collections with virtual collections on the first page.  To fetch your app collection details, you can use `GET /v2/collections/app`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
opts = {
  parent: 'parent_example', # String | List the collections contained in this `parent` collection.  When set to `user` (default), returns the user's own collections as well as collections shared with the user.  Using `root` or `sharedWithMe` is **deprecated** and will be treated as `user`. 
  sort: 'creationDate', # String | Sort
  direction: 'asc', # String | Sort direction
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example' # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  # List the collections
  result = api_instance.list_collections(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->list_collections: #{e}"
end
```

#### Using the list_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Collection>>, Integer, Hash)> list_collections_with_http_info(opts)

```ruby
begin
  # List the collections
  data, status_code, headers = api_instance.list_collections_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Collection>>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->list_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parent** | **String** | List the collections contained in this &#x60;parent&#x60; collection.  When set to &#x60;user&#x60; (default), returns the user&#39;s own collections as well as collections shared with the user.  Using &#x60;root&#x60; or &#x60;sharedWithMe&#x60; is **deprecated** and will be treated as &#x60;user&#x60;.  | [optional][default to &#39;user&#39;] |
| **sort** | **String** | Sort | [optional] |
| **direction** | **String** | Sort direction | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 25] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |

### Return type

[**Array&lt;Collection&gt;**](Collection.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## untrash_collection

> <FlatErrorResponse> untrash_collection(collection)

Untrash a collection

**DEPRECATED** This method will restore the collection by removing it from the `trash` and add it back to the `root` collection. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::CollectionApi.new
collection = 'collection_example' # String | Unique identifier of the collection.

begin
  # Untrash a collection
  result = api_instance.untrash_collection(collection)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->untrash_collection: #{e}"
end
```

#### Using the untrash_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FlatErrorResponse>, Integer, Hash)> untrash_collection_with_http_info(collection)

```ruby
begin
  # Untrash a collection
  data, status_code, headers = api_instance.untrash_collection_with_http_info(collection)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FlatErrorResponse>
rescue FlatApi::ApiError => e
  puts "Error when calling CollectionApi->untrash_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of the collection. |  |

### Return type

[**FlatErrorResponse**](FlatErrorResponse.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

