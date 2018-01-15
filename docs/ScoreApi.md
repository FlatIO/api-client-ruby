# FlatApi::ScoreApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_score_collaborator**](ScoreApi.md#add_score_collaborator) | **POST** /scores/{score}/collaborators | Add a new collaborator
[**add_score_track**](ScoreApi.md#add_score_track) | **POST** /scores/{score}/tracks | Add a new video or audio track to the score
[**create_score**](ScoreApi.md#create_score) | **POST** /scores | Create a new score
[**create_score_revision**](ScoreApi.md#create_score_revision) | **POST** /scores/{score}/revisions | Create a new revision
[**delete_score**](ScoreApi.md#delete_score) | **DELETE** /scores/{score} | Delete a score
[**delete_score_comment**](ScoreApi.md#delete_score_comment) | **DELETE** /scores/{score}/comments/{comment} | Delete a comment
[**delete_score_track**](ScoreApi.md#delete_score_track) | **DELETE** /scores/{score}/tracks/{track} | Remove an audio or video track linked to the score
[**edit_score**](ScoreApi.md#edit_score) | **PUT** /scores/{score} | Edit a score&#39;s metadata
[**fork_score**](ScoreApi.md#fork_score) | **POST** /scores/{score}/fork | Fork a score
[**ger_user_likes**](ScoreApi.md#ger_user_likes) | **GET** /users/{user}/likes | List liked scores
[**get_group_scores**](ScoreApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group&#39;s scores
[**get_score**](ScoreApi.md#get_score) | **GET** /scores/{score} | Get a score&#39;s metadata
[**get_score_collaborator**](ScoreApi.md#get_score_collaborator) | **GET** /scores/{score}/collaborators/{collaborator} | Get a collaborator
[**get_score_collaborators**](ScoreApi.md#get_score_collaborators) | **GET** /scores/{score}/collaborators | List the collaborators
[**get_score_comments**](ScoreApi.md#get_score_comments) | **GET** /scores/{score}/comments | List comments
[**get_score_revision**](ScoreApi.md#get_score_revision) | **GET** /scores/{score}/revisions/{revision} | Get a score revision
[**get_score_revision_data**](ScoreApi.md#get_score_revision_data) | **GET** /scores/{score}/revisions/{revision}/{format} | Get a score revision data
[**get_score_revisions**](ScoreApi.md#get_score_revisions) | **GET** /scores/{score}/revisions | List the revisions
[**get_score_submissions**](ScoreApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score
[**get_score_track**](ScoreApi.md#get_score_track) | **GET** /scores/{score}/tracks/{track} | Retrieve the details of an audio or video track linked to a score
[**get_user_scores**](ScoreApi.md#get_user_scores) | **GET** /users/{user}/scores | List user&#39;s scores
[**list_score_tracks**](ScoreApi.md#list_score_tracks) | **GET** /scores/{score}/tracks | List the audio or video tracks linked to a score
[**mark_score_comment_resolved**](ScoreApi.md#mark_score_comment_resolved) | **PUT** /scores/{score}/comments/{comment}/resolved | Mark the comment as resolved
[**mark_score_comment_unresolved**](ScoreApi.md#mark_score_comment_unresolved) | **DELETE** /scores/{score}/comments/{comment}/resolved | Mark the comment as unresolved
[**post_score_comment**](ScoreApi.md#post_score_comment) | **POST** /scores/{score}/comments | Post a new comment
[**remove_score_collaborator**](ScoreApi.md#remove_score_collaborator) | **DELETE** /scores/{score}/collaborators/{collaborator} | Delete a collaborator
[**update_score_comment**](ScoreApi.md#update_score_comment) | **PUT** /scores/{score}/comments/{comment} | Update an existing comment
[**update_score_track**](ScoreApi.md#update_score_track) | **PUT** /scores/{score}/tracks/{track} | Update an audio or video track linked to a score


# **add_score_collaborator**
> ScoreCollaborator add_score_collaborator(score, body)

Add a new collaborator

Share a score with a single user or a group. This API call allows to add, invite and update the collaborators of a document. - To add an existing Flat user to the document, specify its unique identifier in the `user` property. - To invite an external user to the document, specify its email in the `userEmail` property. - To add a Flat group to the document, specify its unique identifier in the `group` property. - To update an existing collaborator, process the same request with different rights. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

body = FlatApi::ScoreCollaboratorCreation.new # ScoreCollaboratorCreation | 


begin
  #Add a new collaborator
  result = api_instance.add_score_collaborator(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->add_score_collaborator: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreCollaboratorCreation**](ScoreCollaboratorCreation.md)|  | 

### Return type

[**ScoreCollaborator**](ScoreCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **add_score_track**
> ScoreTrack add_score_track(score, body)

Add a new video or audio track to the score

Use this method to add new track to the score. This track can then be played on flat.io or in an embedded score. This API method support medias hosted on SoundCloud, YouTube and Vimeo. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

body = FlatApi::ScoreTrackCreation.new # ScoreTrackCreation | 


begin
  #Add a new video or audio track to the score
  result = api_instance.add_score_track(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->add_score_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreTrackCreation**](ScoreTrackCreation.md)|  | 

### Return type

[**ScoreTrack**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_score**
> ScoreDetails create_score(body)

Create a new score

Use this API method to **create a new music score in the current User account**. You will need a MusicXML 3 (`vnd.recordare.musicxml` or `vnd.recordare.musicxml+xml`) or a MIDI (`audio/midi`) file to create the new Flat document.  This API call will automatically create the first revision of the document, the score can be modified by the using our web application or by uploading a new revision of this file (`POST /v2/scores/{score}/revisions/{revision}`).  The currently authenticated user will be granted owner of the file and will be able to add other collaborators (users and groups). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

body = FlatApi::ScoreCreation.new # ScoreCreation | 


begin
  #Create a new score
  result = api_instance.create_score(body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->create_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScoreCreation**](ScoreCreation.md)|  | 

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_score_revision**
> ScoreRevision create_score_revision(score, body)

Create a new revision

Update a score by uploading a new revision for this one. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

body = FlatApi::ScoreRevisionCreation.new # ScoreRevisionCreation | 


begin
  #Create a new revision
  result = api_instance.create_score_revision(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->create_score_revision: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreRevisionCreation**](ScoreRevisionCreation.md)|  | 

### Return type

[**ScoreRevision**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_score**
> delete_score(score, )

Delete a score

This API call will schedule the deletion of the score, its revisions, and whole history. The user calling this API method must have the `aclAdmin` rights on this document to process this action. The score won't be accessible anymore after calling this method and the user's quota will directly be updated. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 


begin
  #Delete a score
  api_instance.delete_score(score, )
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->delete_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_score_comment**
> delete_score_comment(score, comment, opts)

Delete a comment

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

comment = "comment_example" # String | Unique identifier of a sheet music comment 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Delete a comment
  api_instance.delete_score_comment(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->delete_score_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **comment** | **String**| Unique identifier of a sheet music comment  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_score_track**
> delete_score_track(score, track)

Remove an audio or video track linked to the score

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

track = "track_example" # String | Unique identifier of a score audio track 


begin
  #Remove an audio or video track linked to the score
  api_instance.delete_score_track(score, track)
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->delete_score_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **track** | **String**| Unique identifier of a score audio track  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **edit_score**
> ScoreDetails edit_score(score, , opts)

Edit a score's metadata

This API method allows you to change the metadata of a score document (e.g. its `title` or `privacy`), all the properties are optional.  To edit the file itself, create a new revision using the appropriate method (`POST /v2/scores/{score}/revisions/{revision}`). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  body: FlatApi::ScoreModification.new # ScoreModification | 
}

begin
  #Edit a score's metadata
  result = api_instance.edit_score(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->edit_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreModification**](ScoreModification.md)|  | [optional] 

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **fork_score**
> ScoreDetails fork_score(score, body, opts)

Fork a score

This API call will make a copy of the last revision of the specified score and create a new score. The copy of the score will have a privacy set to `private`.  When using a [Flat for Education](https://flat.io/edu) account, the inline and contextualized comments will be accessible in the child document. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

body = FlatApi::ScoreFork.new # ScoreFork | 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Fork a score
  result = api_instance.fork_score(score, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->fork_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreFork**](ScoreFork.md)|  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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

api_instance = FlatApi::ScoreApi.new

user = "user_example" # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 

opts = { 
  ids: true # BOOLEAN | Return only the identifiers of the scores
}

begin
  #List liked scores
  result = api_instance.ger_user_likes(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->ger_user_likes: #{e}"
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

api_instance = FlatApi::ScoreApi.new

group = "group_example" # String | Unique identifier of a Flat group 

opts = { 
  parent: "parent_example" # String | Filter the score forked from the score id `parent`
}

begin
  #List group's scores
  result = api_instance.get_group_scores(group, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_group_scores: #{e}"
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



# **get_score**
> ScoreDetails get_score(score, , opts)

Get a score's metadata

Get the details of a score identified by the `score` parameter in the URL. The currently authenticated user must have at least a read access to the document to use this API call. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Get a score's metadata
  result = api_instance.get_score(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_collaborator**
> ScoreCollaborator get_score_collaborator(score, collaborator, opts)

Get a collaborator

Get the information about a collaborator (User or Group). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

collaborator = "collaborator_example" # String | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group** 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Get a collaborator
  result = api_instance.get_score_collaborator(score, collaborator, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_collaborator: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **collaborator** | **String**| Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group**  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreCollaborator**](ScoreCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_collaborators**
> Array&lt;ScoreCollaborator&gt; get_score_collaborators(score, , opts)

List the collaborators

This API call will list the different collaborators of a score and their rights on the document. The returned list will at least contain the owner of the document.  Collaborators can be a single user (the object `user` will be populated) or a group (the object `group` will be populated). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #List the collaborators
  result = api_instance.get_score_collaborators(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_collaborators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**Array&lt;ScoreCollaborator&gt;**](ScoreCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_comments**
> Array&lt;ScoreComment&gt; get_score_comments(score, , opts)

List comments

This method lists the different comments added on a music score (documents and inline) sorted by their post dates.

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #List comments
  result = api_instance.get_score_comments(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_comments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**Array&lt;ScoreComment&gt;**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_revision**
> ScoreRevision get_score_revision(score, revision, , opts)

Get a score revision

When creating a score or saving a new version of a score, a revision is created in our storage. This method allows you to get a specific revision metadata. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

revision = "revision_example" # String | Unique identifier of a score revision. You can use `last` to fetch the information related to the last version created. 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Get a score revision
  result = api_instance.get_score_revision(score, revision, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_revision: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **revision** | **String**| Unique identifier of a score revision. You can use &#x60;last&#x60; to fetch the information related to the last version created.  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreRevision**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_revision_data**
> String get_score_revision_data(score, revision, format, opts)

Get a score revision data

Retrieve the file corresponding to a score revision (the following formats are available: Flat JSON/Adagio JSON `json`, MusicXML `mxl`/`xml`, MP3 `mp3`, WAV `wav`, MIDI `midi`, or a tumbnail of the first page `thumbnail.png`). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

revision = "revision_example" # String | Unique identifier of a score revision. You can use `last` to fetch the information related to the last version created. 

format = "format_example" # String | The format of the file you will retrieve

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
  only_cached: true, # BOOLEAN | Only return files already generated and cached in Flat's production cache. If the file is not availabe, a 404 will be returned 
  parts: "parts_example" # String | An optional a set of parts to be exported. This parameter must be specified with a list of integers. For example \"1,2,5\". 
}

begin
  #Get a score revision data
  result = api_instance.get_score_revision_data(score, revision, format, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_revision_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **revision** | **String**| Unique identifier of a score revision. You can use &#x60;last&#x60; to fetch the information related to the last version created.  | 
 **format** | **String**| The format of the file you will retrieve | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 
 **only_cached** | **BOOLEAN**| Only return files already generated and cached in Flat&#39;s production cache. If the file is not availabe, a 404 will be returned  | [optional] 
 **parts** | **String**| An optional a set of parts to be exported. This parameter must be specified with a list of integers. For example \&quot;1,2,5\&quot;.  | [optional] 

### Return type

**String**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/vnd.recordare.musicxml+xml, application/vnd.recordare.musicxml, audio/mp3, audio/wav, audio/midi, image/png



# **get_score_revisions**
> Array&lt;ScoreRevision&gt; get_score_revisions(score, , opts)

List the revisions

When creating a score or saving a new version of a score, a revision is created in our storage. This method allows you to list all of them, sorted by last modification.  Depending the plan of the account, this list can be trunked to the few last revisions. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #List the revisions
  result = api_instance.get_score_revisions(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_revisions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**Array&lt;ScoreRevision&gt;**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_submissions**
> Array&lt;AssignmentSubmission&gt; get_score_submissions(score, )

List submissions related to the score

This API call will list the different assignments submissions where the score is attached. This method can be used by anyone that are part of the organization and have at least read access to the document. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 


begin
  #List submissions related to the score
  result = api_instance.get_score_submissions(score, )
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_submissions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_score_track**
> ScoreTrack get_score_track(score, track, opts)

Retrieve the details of an audio or video track linked to a score

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

track = "track_example" # String | Unique identifier of a score audio track 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Retrieve the details of an audio or video track linked to a score
  result = api_instance.get_score_track(score, track, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_score_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **track** | **String**| Unique identifier of a score audio track  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreTrack**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_user_scores**
> Array&lt;ScoreDetails&gt; get_user_scores(user, opts)

List user's scores

Get the list of scores owned by the User 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

user = "user_example" # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 

opts = { 
  parent: "parent_example" # String | Filter the score forked from the score id `parent`
}

begin
  #List user's scores
  result = api_instance.get_user_scores(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->get_user_scores: #{e}"
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



# **list_score_tracks**
> Array&lt;ScoreTrack&gt; list_score_tracks(score, , opts)

List the audio or video tracks linked to a score

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #List the audio or video tracks linked to a score
  result = api_instance.list_score_tracks(score, , opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->list_score_tracks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**Array&lt;ScoreTrack&gt;**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mark_score_comment_resolved**
> mark_score_comment_resolved(score, comment, opts)

Mark the comment as resolved

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

comment = "comment_example" # String | Unique identifier of a sheet music comment 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Mark the comment as resolved
  api_instance.mark_score_comment_resolved(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->mark_score_comment_resolved: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **comment** | **String**| Unique identifier of a sheet music comment  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mark_score_comment_unresolved**
> mark_score_comment_unresolved(score, comment, opts)

Mark the comment as unresolved

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

comment = "comment_example" # String | Unique identifier of a sheet music comment 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Mark the comment as unresolved
  api_instance.mark_score_comment_unresolved(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->mark_score_comment_unresolved: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **comment** | **String**| Unique identifier of a sheet music comment  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_score_comment**
> ScoreComment post_score_comment(score, body, opts)

Post a new comment

Post a document or a contextualized comment on a document.  Please note that this method includes an anti-spam system for public scores. We don't guarantee that your comments will be accepted and displayed to end-user. Comments are be blocked by returning a `403` HTTP error and hidden from other users when the `spam` property is `true`. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

body = FlatApi::ScoreCommentCreation.new # ScoreCommentCreation | 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Post a new comment
  result = api_instance.post_score_comment(score, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->post_score_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **body** | [**ScoreCommentCreation**](ScoreCommentCreation.md)|  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreComment**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_score_collaborator**
> remove_score_collaborator(score, collaborator)

Delete a collaborator

Remove the specified collaborator from the score 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

collaborator = "collaborator_example" # String | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group** 


begin
  #Delete a collaborator
  api_instance.remove_score_collaborator(score, collaborator)
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->remove_score_collaborator: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **collaborator** | **String**| Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group**  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_score_comment**
> ScoreComment update_score_comment(score, commentbody, opts)

Update an existing comment

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

comment = "comment_example" # String | Unique identifier of a sheet music comment 

body = FlatApi::ScoreCommentUpdate.new # ScoreCommentUpdate | 

opts = { 
  sharing_key: "sharing_key_example", # String | This sharing key must be specified to access to a score with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  #Update an existing comment
  result = api_instance.update_score_comment(score, commentbody, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->update_score_comment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **comment** | **String**| Unique identifier of a sheet music comment  | 
 **body** | [**ScoreCommentUpdate**](ScoreCommentUpdate.md)|  | 
 **sharing_key** | **String**| This sharing key must be specified to access to a score with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] 

### Return type

[**ScoreComment**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_score_track**
> ScoreTrack update_score_track(score, trackbody)

Update an audio or video track linked to a score

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new

score = "score_example" # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

track = "track_example" # String | Unique identifier of a score audio track 

body = FlatApi::ScoreTrackUpdate.new # ScoreTrackUpdate | 


begin
  #Update an audio or video track linked to a score
  result = api_instance.update_score_track(score, trackbody)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling ScoreApi->update_score_track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **score** | **String**| Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  | 
 **track** | **String**| Unique identifier of a score audio track  | 
 **body** | [**ScoreTrackUpdate**](ScoreTrackUpdate.md)|  | 

### Return type

[**ScoreTrack**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



