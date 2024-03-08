# FlatApi::ScoreApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_score_collaborator**](ScoreApi.md#add_score_collaborator) | **POST** /scores/{score}/collaborators | Add a new collaborator |
| [**add_score_track**](ScoreApi.md#add_score_track) | **POST** /scores/{score}/tracks | Add a new video or audio track to the score |
| [**create_export_task**](ScoreApi.md#create_export_task) | **POST** /scores/{score}/revisions/{revision}/{format}/task | Create a new score export task |
| [**create_score**](ScoreApi.md#create_score) | **POST** /scores | Create a new score |
| [**create_score_revision**](ScoreApi.md#create_score_revision) | **POST** /scores/{score}/revisions | Create a new revision |
| [**delete_score**](ScoreApi.md#delete_score) | **DELETE** /scores/{score} | Delete a score |
| [**delete_score_comment**](ScoreApi.md#delete_score_comment) | **DELETE** /scores/{score}/comments/{comment} | Delete a comment |
| [**delete_score_track**](ScoreApi.md#delete_score_track) | **DELETE** /scores/{score}/tracks/{track} | Remove an audio or video track linked to the score |
| [**edit_score**](ScoreApi.md#edit_score) | **PUT** /scores/{score} | Edit a score&#39;s metadata |
| [**fork_score**](ScoreApi.md#fork_score) | **POST** /scores/{score}/fork | Fork a score |
| [**get_group_scores**](ScoreApi.md#get_group_scores) | **GET** /groups/{group}/scores | List group&#39;s scores |
| [**get_score**](ScoreApi.md#get_score) | **GET** /scores/{score} | Get a score&#39;s metadata |
| [**get_score_collaborator**](ScoreApi.md#get_score_collaborator) | **GET** /scores/{score}/collaborators/{collaborator} | Get a collaborator |
| [**get_score_collaborators**](ScoreApi.md#get_score_collaborators) | **GET** /scores/{score}/collaborators | List the collaborators |
| [**get_score_comments**](ScoreApi.md#get_score_comments) | **GET** /scores/{score}/comments | List comments |
| [**get_score_revision**](ScoreApi.md#get_score_revision) | **GET** /scores/{score}/revisions/{revision} | Get a score revision |
| [**get_score_revision_data**](ScoreApi.md#get_score_revision_data) | **GET** /scores/{score}/revisions/{revision}/{format} | Get a score revision data |
| [**get_score_revisions**](ScoreApi.md#get_score_revisions) | **GET** /scores/{score}/revisions | List the revisions |
| [**get_score_submissions**](ScoreApi.md#get_score_submissions) | **GET** /scores/{score}/submissions | List submissions related to the score |
| [**get_score_track**](ScoreApi.md#get_score_track) | **GET** /scores/{score}/tracks/{track} | Retrieve the details of an audio or video track linked to a score |
| [**get_user_likes**](ScoreApi.md#get_user_likes) | **GET** /users/{user}/likes | List liked scores |
| [**get_user_scores**](ScoreApi.md#get_user_scores) | **GET** /users/{user}/scores | List user&#39;s scores |
| [**list_score_tracks**](ScoreApi.md#list_score_tracks) | **GET** /scores/{score}/tracks | List the audio or video tracks linked to a score |
| [**mark_score_comment_resolved**](ScoreApi.md#mark_score_comment_resolved) | **PUT** /scores/{score}/comments/{comment}/resolved | Mark the comment as resolved |
| [**mark_score_comment_unresolved**](ScoreApi.md#mark_score_comment_unresolved) | **DELETE** /scores/{score}/comments/{comment}/resolved | Mark the comment as unresolved |
| [**post_score_comment**](ScoreApi.md#post_score_comment) | **POST** /scores/{score}/comments | Post a new comment |
| [**remove_score_collaborator**](ScoreApi.md#remove_score_collaborator) | **DELETE** /scores/{score}/collaborators/{collaborator} | Delete a collaborator |
| [**untrash_score**](ScoreApi.md#untrash_score) | **POST** /scores/{score}/untrash | Untrash a score |
| [**update_score_comment**](ScoreApi.md#update_score_comment) | **PUT** /scores/{score}/comments/{comment} | Update an existing comment |
| [**update_score_track**](ScoreApi.md#update_score_track) | **PUT** /scores/{score}/tracks/{track} | Update an audio or video track linked to a score |


## add_score_collaborator

> <ResourceCollaborator> add_score_collaborator(score, body)

Add a new collaborator

Share a score with a single user or a group. This API call allows to add, invite and update the collaborators of a resource. - To add an existing Flat user to the resource, specify its unique identifier in the `user` property. - To invite an external user to the resource, specify its email in the `userEmail` property. - To add a Flat group to the resource, specify its unique identifier in the `group` property. - To update an existing collaborator, process the same request with different rights. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ResourceCollaboratorCreation.new # ResourceCollaboratorCreation | 

begin
  # Add a new collaborator
  result = api_instance.add_score_collaborator(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->add_score_collaborator: #{e}"
end
```

#### Using the add_score_collaborator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceCollaborator>, Integer, Hash)> add_score_collaborator_with_http_info(score, body)

```ruby
begin
  # Add a new collaborator
  data, status_code, headers = api_instance.add_score_collaborator_with_http_info(score, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceCollaborator>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->add_score_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ResourceCollaboratorCreation**](ResourceCollaboratorCreation.md) |  |  |

### Return type

[**ResourceCollaborator**](ResourceCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_score_track

> <ScoreTrack> add_score_track(score, body)

Add a new video or audio track to the score

Use this method to add new track to the score. This track can then be played on flat.io or in an embedded score. This API method support medias hosted on SoundCloud, YouTube and Vimeo. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ScoreTrackCreation.new # ScoreTrackCreation | 

begin
  # Add a new video or audio track to the score
  result = api_instance.add_score_track(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->add_score_track: #{e}"
end
```

#### Using the add_score_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreTrack>, Integer, Hash)> add_score_track_with_http_info(score, body)

```ruby
begin
  # Add a new video or audio track to the score
  data, status_code, headers = api_instance.add_score_track_with_http_info(score, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreTrack>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->add_score_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ScoreTrackCreation**](ScoreTrackCreation.md) |  |  |

### Return type

[**ScoreTrack**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_export_task

> <Task> create_export_task(score, revision, format, opts)

Create a new score export task

Some of the exports of a score takes are longer to process than a simple API requests. Use this endpoint to launch a new export of one score hosted on Flat. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
revision = 'revision_example' # String | Unique identifier of a score revision. You can use `last` to fetch the information related to the last version created. 
format = 'mp3' # String | The format of the file that will be generated or the target service name where the file will be exported
opts = {
  sharing_key: 'sharing_key_example', # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
  body: FlatApi::TaskExportOptions.new # TaskExportOptions | 
}

begin
  # Create a new score export task
  result = api_instance.create_export_task(score, revision, format, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_export_task: #{e}"
end
```

#### Using the create_export_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Task>, Integer, Hash)> create_export_task_with_http_info(score, revision, format, opts)

```ruby
begin
  # Create a new score export task
  data, status_code, headers = api_instance.create_export_task_with_http_info(score, revision, format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Task>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_export_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **revision** | **String** | Unique identifier of a score revision. You can use &#x60;last&#x60; to fetch the information related to the last version created.  |  |
| **format** | **String** | The format of the file that will be generated or the target service name where the file will be exported |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |
| **body** | [**TaskExportOptions**](TaskExportOptions.md) |  | [optional] |

### Return type

[**Task**](Task.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_score

> <ScoreDetails> create_score(body)

Create a new score

Use this API method to **create a new music score in the current User account**. This API endpoints provides 3 ways to create scores:  * `ScoreCreationBuilderData` : Create a blank score by providing the list of instruments to use. You can optionally customize the initial key signature, time signature, enable TABs, Chord grids, as well as the page layout. * `ScoreCreationFileImport`: Import an existing MusicXML 3 file (`vnd.recordare.musicxml` or `vnd.recordare.musicxml+xml`), a MIDI file (`audio/midi`), Guitar Pro (GP3, GP4, GP5, GPX, GP), PowerTab, TuxGuitar, or MuseScore file to create the new Flat document. * `ScoreCreationGoogleDriveImport`: Import an existing Google Drive file from the connected Google Drive account.  This API call will automatically create the first revision of the document, the score can be modified by the using our web application or by uploading a new revision of this file (`POST /v2/scores/{score}/revisions/{revision}`).  The currently authenticated user will be granted owner of the file and will be able to add other collaborators (users and groups).  If no `collection` is specified, the API will create the score in the most appropriate collection. When using an OAuth2 access token or a personal token, the score will be automatically added to your dedicated app collection in the account (`/v2/collections/app`).  If a `collection` is specified and this one has more public privacy settings than the score (e.g. `public` vs `private` for the score), the privacy settings of the created score will be adjusted to the collection ones.  You can check the adjusted privacy settings in the returned score `privacy`, and optionally adjust these settings if needed using `PUT /scores/{score}`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
body = FlatApi::ScoreCreationBuilderData.new({title: 'title_example', builder_data: FlatApi::ScoreCreationBuilderDataAllOfBuilderData.new({score_data: FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreData.new({instruments: [FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreDataInstruments.new({group: 'group_example', instrument: 'instrument_example'})]})})}) # ScoreCreation | 

begin
  # Create a new score
  result = api_instance.create_score(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_score: #{e}"
end
```

#### Using the create_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreDetails>, Integer, Hash)> create_score_with_http_info(body)

```ruby
begin
  # Create a new score
  data, status_code, headers = api_instance.create_score_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ScoreCreation**](ScoreCreation.md) |  |  |

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_score_revision

> <ScoreRevision> create_score_revision(score, body)

Create a new revision

Update a score by uploading a new revision for this one. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ScoreRevisionCreation.new({data: '<score-partwise version="3.0"></score-partwise>'}) # ScoreRevisionCreation | 

begin
  # Create a new revision
  result = api_instance.create_score_revision(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_score_revision: #{e}"
end
```

#### Using the create_score_revision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreRevision>, Integer, Hash)> create_score_revision_with_http_info(score, body)

```ruby
begin
  # Create a new revision
  data, status_code, headers = api_instance.create_score_revision_with_http_info(score, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreRevision>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->create_score_revision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ScoreRevisionCreation**](ScoreRevisionCreation.md) |  |  |

### Return type

[**ScoreRevision**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_score

> delete_score(score, opts)

Delete a score

This method can be used by the owner/admin (`aclAdmin` rights) of a score as well as regular collaborators.  When called by an owner/admin, it will schedule the deletion of the score, its revisions, and complete history. The score won't be accessible anymore after calling this method and the user's quota will directly be updated.  When called by a regular collaborator (`aclRead` / `aclWrite`), the score will be unshared (i.e. removed from the account & own collections). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  now: true # Boolean | If `true`, the score deletion will be scheduled to be done ASAP
}

begin
  # Delete a score
  api_instance.delete_score(score, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score: #{e}"
end
```

#### Using the delete_score_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_score_with_http_info(score, opts)

```ruby
begin
  # Delete a score
  data, status_code, headers = api_instance.delete_score_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **now** | **Boolean** | If &#x60;true&#x60;, the score deletion will be scheduled to be done ASAP | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_score_comment

> delete_score_comment(score, comment, opts)

Delete a comment

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
comment = 'comment_example' # String | Unique identifier of a sheet music comment 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Delete a comment
  api_instance.delete_score_comment(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score_comment: #{e}"
end
```

#### Using the delete_score_comment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_score_comment_with_http_info(score, comment, opts)

```ruby
begin
  # Delete a comment
  data, status_code, headers = api_instance.delete_score_comment_with_http_info(score, comment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **comment** | **String** | Unique identifier of a sheet music comment  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_score_track

> delete_score_track(score, track)

Remove an audio or video track linked to the score

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
track = 'track_example' # String | Unique identifier of a score audio track 

begin
  # Remove an audio or video track linked to the score
  api_instance.delete_score_track(score, track)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score_track: #{e}"
end
```

#### Using the delete_score_track_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_score_track_with_http_info(score, track)

```ruby
begin
  # Remove an audio or video track linked to the score
  data, status_code, headers = api_instance.delete_score_track_with_http_info(score, track)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->delete_score_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **track** | **String** | Unique identifier of a score audio track  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_score

> <ScoreDetails> edit_score(score, body)

Edit a score's metadata

This API method allows you to change the metadata of a score document (e.g. its `title` or `privacy`), all the properties are optional.  To edit the file itself, create a new revision using the appropriate method (`POST /v2/scores/{score}/revisions/{revision}`).  When editing the `title`, `subtitle`, `composer`, `lyricist`, `arranger` or `licenseText`, the metadatas will be instantly be updated, and a real-time action will be pushed to update the document lazily. This pending document modification will be automatically be saved as a new version by either a connected client or our internal versioning service. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ScoreModification.new # ScoreModification | 

begin
  # Edit a score's metadata
  result = api_instance.edit_score(score, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->edit_score: #{e}"
end
```

#### Using the edit_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreDetails>, Integer, Hash)> edit_score_with_http_info(score, body)

```ruby
begin
  # Edit a score's metadata
  data, status_code, headers = api_instance.edit_score_with_http_info(score, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->edit_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ScoreModification**](ScoreModification.md) |  |  |

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## fork_score

> <ScoreDetails> fork_score(score, body, opts)

Fork a score

This API call will make a copy of the last revision of the specified score and create a new score. The copy of the score will have a privacy set to `private`.  When using a [Flat for Education](https://flat.io/edu) account, the inline and contextualized comments will be accessible in the child document. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ScoreFork.new # ScoreFork | 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Fork a score
  result = api_instance.fork_score(score, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->fork_score: #{e}"
end
```

#### Using the fork_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreDetails>, Integer, Hash)> fork_score_with_http_info(score, body, opts)

```ruby
begin
  # Fork a score
  data, status_code, headers = api_instance.fork_score_with_http_info(score, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->fork_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ScoreFork**](ScoreFork.md) |  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
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

api_instance = FlatApi::ScoreApi.new
group = 'group_example' # String | Unique identifier of a Flat group 
opts = {
  parent: 'parent_example' # String | Filter the score forked from the score id `parent`
}

begin
  # List group's scores
  result = api_instance.get_group_scores(group, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_group_scores: #{e}"
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
  puts "Error when calling ScoreApi->get_group_scores_with_http_info: #{e}"
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


## get_score

> <ScoreDetails> get_score(score, opts)

Get a score's metadata

Get the details of a score identified by the `score` parameter in the URL. The currently authenticated user must have at least a read access to the document to use this API call. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Get a score's metadata
  result = api_instance.get_score(score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score: #{e}"
end
```

#### Using the get_score_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreDetails>, Integer, Hash)> get_score_with_http_info(score, opts)

```ruby
begin
  # Get a score's metadata
  data, status_code, headers = api_instance.get_score_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreDetails>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreDetails**](ScoreDetails.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_collaborator

> <ResourceCollaborator> get_score_collaborator(score, collaborator, opts)

Get a collaborator

Get the information about a collaborator (User or Group). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
collaborator = 'collaborator_example' # String | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group** 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Get a collaborator
  result = api_instance.get_score_collaborator(score, collaborator, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_collaborator: #{e}"
end
```

#### Using the get_score_collaborator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResourceCollaborator>, Integer, Hash)> get_score_collaborator_with_http_info(score, collaborator, opts)

```ruby
begin
  # Get a collaborator
  data, status_code, headers = api_instance.get_score_collaborator_with_http_info(score, collaborator, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResourceCollaborator>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **collaborator** | **String** | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group**  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ResourceCollaborator**](ResourceCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_collaborators

> <Array<ResourceCollaborator>> get_score_collaborators(score, opts)

List the collaborators

This API call will list the different collaborators of a score and their rights on the document. The returned list will at least contain the owner of the document.  Collaborators can be a single user (the object `user` will be populated) or a group (the object `group` will be populated). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # List the collaborators
  result = api_instance.get_score_collaborators(score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_collaborators: #{e}"
end
```

#### Using the get_score_collaborators_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResourceCollaborator>>, Integer, Hash)> get_score_collaborators_with_http_info(score, opts)

```ruby
begin
  # List the collaborators
  data, status_code, headers = api_instance.get_score_collaborators_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResourceCollaborator>>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_collaborators_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_comments

> <Array<ScoreComment>> get_score_comments(score, opts)

List comments

This method lists the different comments added on a music score (documents and inline) sorted by their post dates.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example', # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
  type: 'document', # String | Filter the comments by type
  sort: 'date', # String | Sort
  direction: 'asc' # String | Sort direction
}

begin
  # List comments
  result = api_instance.get_score_comments(score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_comments: #{e}"
end
```

#### Using the get_score_comments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreComment>>, Integer, Hash)> get_score_comments_with_http_info(score, opts)

```ruby
begin
  # List comments
  data, status_code, headers = api_instance.get_score_comments_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreComment>>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_comments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |
| **type** | **String** | Filter the comments by type | [optional] |
| **sort** | **String** | Sort | [optional] |
| **direction** | **String** | Sort direction | [optional] |

### Return type

[**Array&lt;ScoreComment&gt;**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_revision

> <ScoreRevision> get_score_revision(score, revision, opts)

Get a score revision

When creating a score or saving a new version of a score, a revision is created in our storage. This method allows you to get a specific revision metadata. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
revision = 'revision_example' # String | Unique identifier of a score revision. You can use `last` to fetch the information related to the last version created. 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Get a score revision
  result = api_instance.get_score_revision(score, revision, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revision: #{e}"
end
```

#### Using the get_score_revision_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreRevision>, Integer, Hash)> get_score_revision_with_http_info(score, revision, opts)

```ruby
begin
  # Get a score revision
  data, status_code, headers = api_instance.get_score_revision_with_http_info(score, revision, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreRevision>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revision_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **revision** | **String** | Unique identifier of a score revision. You can use &#x60;last&#x60; to fetch the information related to the last version created.  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreRevision**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_revision_data

> File get_score_revision_data(score, revision, format, opts)

Get a score revision data

Retrieve the file corresponding to a score revision (the following formats are available): Flat JSON/Adagio JSON `json`, MusicXML `mxl`/`xml`, MP3 `mp3`, WAV `wav`, MIDI `midi`, a tumbnail of the first page `thumbnail.png` or auto sync points `synchronizationPoints`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
revision = 'revision_example' # String | Unique identifier of a score revision. You can use `last` to fetch the information related to the last version created. 
format = 'json' # String | The format of the file you will retrieve
opts = {
  sharing_key: 'sharing_key_example', # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
  parts: 'parts_example', # String | An optional a set of parts uuid to be exported. This parameter must be composed of parts uuids separated by commas. For example \"59df645f-bb1c-f1b4-b573-d2afc4491f94,34ef645f-1aef-f3bc-1564-34cca4492b87\". 
  default_track: true, # Boolean | When `format` is `mp3`, this property is set to true and the score has a default `ScoreTrack` (mp3), this one will be returned instead of the playback file. 
  url: true # Boolean | Returns a json with the `url` in it instead of redirecting 
}

begin
  # Get a score revision data
  result = api_instance.get_score_revision_data(score, revision, format, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revision_data: #{e}"
end
```

#### Using the get_score_revision_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_score_revision_data_with_http_info(score, revision, format, opts)

```ruby
begin
  # Get a score revision data
  data, status_code, headers = api_instance.get_score_revision_data_with_http_info(score, revision, format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revision_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **revision** | **String** | Unique identifier of a score revision. You can use &#x60;last&#x60; to fetch the information related to the last version created.  |  |
| **format** | **String** | The format of the file you will retrieve |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |
| **parts** | **String** | An optional a set of parts uuid to be exported. This parameter must be composed of parts uuids separated by commas. For example \&quot;59df645f-bb1c-f1b4-b573-d2afc4491f94,34ef645f-1aef-f3bc-1564-34cca4492b87\&quot;.  | [optional] |
| **default_track** | **Boolean** | When &#x60;format&#x60; is &#x60;mp3&#x60;, this property is set to true and the score has a default &#x60;ScoreTrack&#x60; (mp3), this one will be returned instead of the playback file.  | [optional] |
| **url** | **Boolean** | Returns a json with the &#x60;url&#x60; in it instead of redirecting  | [optional] |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/vnd.recordare.musicxml+xml, application/vnd.recordare.musicxml, audio/mp3, audio/wav, audio/midi, image/png


## get_score_revisions

> <Array<ScoreRevision>> get_score_revisions(score, opts)

List the revisions

When creating a score or saving a new version of a score, a revision is created in our storage. This method allows you to list all of them, sorted by last modification.  Depending the plan of the account, this list can be trunked to the few last revisions. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # List the revisions
  result = api_instance.get_score_revisions(score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revisions: #{e}"
end
```

#### Using the get_score_revisions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreRevision>>, Integer, Hash)> get_score_revisions_with_http_info(score, opts)

```ruby
begin
  # List the revisions
  data, status_code, headers = api_instance.get_score_revisions_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreRevision>>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_revisions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**Array&lt;ScoreRevision&gt;**](ScoreRevision.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_submissions

> <Array<AssignmentSubmission>> get_score_submissions(score)

List submissions related to the score

This API call will list the different assignments submissions where the score is attached. This method can be used by anyone that are part of the organization and have at least read access to the document. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

begin
  # List submissions related to the score
  result = api_instance.get_score_submissions(score)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_submissions: #{e}"
end
```

#### Using the get_score_submissions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssignmentSubmission>>, Integer, Hash)> get_score_submissions_with_http_info(score)

```ruby
begin
  # List submissions related to the score
  data, status_code, headers = api_instance.get_score_submissions_with_http_info(score)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssignmentSubmission>>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_submissions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |

### Return type

[**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_score_track

> <ScoreTrack> get_score_track(score, track, opts)

Retrieve the details of an audio or video track linked to a score

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
track = 'track_example' # String | Unique identifier of a score audio track 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Retrieve the details of an audio or video track linked to a score
  result = api_instance.get_score_track(score, track, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_track: #{e}"
end
```

#### Using the get_score_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreTrack>, Integer, Hash)> get_score_track_with_http_info(score, track, opts)

```ruby
begin
  # Retrieve the details of an audio or video track linked to a score
  data, status_code, headers = api_instance.get_score_track_with_http_info(score, track, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreTrack>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_score_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **track** | **String** | Unique identifier of a score audio track  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreTrack**](ScoreTrack.md)

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

api_instance = FlatApi::ScoreApi.new
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
  puts "Error when calling ScoreApi->get_user_likes: #{e}"
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
  puts "Error when calling ScoreApi->get_user_likes_with_http_info: #{e}"
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

api_instance = FlatApi::ScoreApi.new
user = 'user_example' # String | Unique identifier of a Flat user. If you authenticated, you can use `me` to refer to the current user. 
opts = {
  parent: 'parent_example' # String | Filter the score forked from the score id `parent`
}

begin
  # List user's scores
  result = api_instance.get_user_scores(user, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->get_user_scores: #{e}"
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
  puts "Error when calling ScoreApi->get_user_scores_with_http_info: #{e}"
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


## list_score_tracks

> <Array<ScoreTrack>> list_score_tracks(score, opts)

List the audio or video tracks linked to a score

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
opts = {
  sharing_key: 'sharing_key_example', # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
  assignment: 'assignment_example', # String | An assignment id with which all the tracks returned will be related to 
  list_auto_track: true # Boolean | If true, and if available, return last automatically synchronized Flat's mp3 export as an additional track 
}

begin
  # List the audio or video tracks linked to a score
  result = api_instance.list_score_tracks(score, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->list_score_tracks: #{e}"
end
```

#### Using the list_score_tracks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ScoreTrack>>, Integer, Hash)> list_score_tracks_with_http_info(score, opts)

```ruby
begin
  # List the audio or video tracks linked to a score
  data, status_code, headers = api_instance.list_score_tracks_with_http_info(score, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ScoreTrack>>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->list_score_tracks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |
| **assignment** | **String** | An assignment id with which all the tracks returned will be related to  | [optional] |
| **list_auto_track** | **Boolean** | If true, and if available, return last automatically synchronized Flat&#39;s mp3 export as an additional track  | [optional] |

### Return type

[**Array&lt;ScoreTrack&gt;**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_score_comment_resolved

> mark_score_comment_resolved(score, comment, opts)

Mark the comment as resolved

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
comment = 'comment_example' # String | Unique identifier of a sheet music comment 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Mark the comment as resolved
  api_instance.mark_score_comment_resolved(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->mark_score_comment_resolved: #{e}"
end
```

#### Using the mark_score_comment_resolved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_score_comment_resolved_with_http_info(score, comment, opts)

```ruby
begin
  # Mark the comment as resolved
  data, status_code, headers = api_instance.mark_score_comment_resolved_with_http_info(score, comment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->mark_score_comment_resolved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **comment** | **String** | Unique identifier of a sheet music comment  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## mark_score_comment_unresolved

> mark_score_comment_unresolved(score, comment, opts)

Mark the comment as unresolved

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
comment = 'comment_example' # String | Unique identifier of a sheet music comment 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Mark the comment as unresolved
  api_instance.mark_score_comment_unresolved(score, comment, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->mark_score_comment_unresolved: #{e}"
end
```

#### Using the mark_score_comment_unresolved_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> mark_score_comment_unresolved_with_http_info(score, comment, opts)

```ruby
begin
  # Mark the comment as unresolved
  data, status_code, headers = api_instance.mark_score_comment_unresolved_with_http_info(score, comment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->mark_score_comment_unresolved_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **comment** | **String** | Unique identifier of a sheet music comment  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_score_comment

> <ScoreComment> post_score_comment(score, body, opts)

Post a new comment

Post a document or a contextualized comment on a document.  Please note that this method includes an anti-spam system for public scores. We don't guarantee that your comments will be accepted and displayed to end-user. Comments are be blocked by returning a `403` HTTP error and hidden from other users when the `spam` property is `true`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
body = FlatApi::ScoreCommentCreation.new({comment: 'comment_example'}) # ScoreCommentCreation | 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Post a new comment
  result = api_instance.post_score_comment(score, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->post_score_comment: #{e}"
end
```

#### Using the post_score_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreComment>, Integer, Hash)> post_score_comment_with_http_info(score, body, opts)

```ruby
begin
  # Post a new comment
  data, status_code, headers = api_instance.post_score_comment_with_http_info(score, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreComment>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->post_score_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **body** | [**ScoreCommentCreation**](ScoreCommentCreation.md) |  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreComment**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_score_collaborator

> remove_score_collaborator(score, collaborator)

Delete a collaborator

Remove the specified collaborator from the score 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
collaborator = 'collaborator_example' # String | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group** 

begin
  # Delete a collaborator
  api_instance.remove_score_collaborator(score, collaborator)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->remove_score_collaborator: #{e}"
end
```

#### Using the remove_score_collaborator_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_score_collaborator_with_http_info(score, collaborator)

```ruby
begin
  # Delete a collaborator
  data, status_code, headers = api_instance.remove_score_collaborator_with_http_info(score, collaborator)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->remove_score_collaborator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **collaborator** | **String** | Unique identifier of a **collaborator permission**, or unique identifier of a **User**, or unique identifier of a **Group**  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## untrash_score

> untrash_score(score)

Untrash a score

This method will remove the score from the `trash` collection and from the deletion queue, and add it back to the original collections. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 

begin
  # Untrash a score
  api_instance.untrash_score(score)
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->untrash_score: #{e}"
end
```

#### Using the untrash_score_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> untrash_score_with_http_info(score)

```ruby
begin
  # Untrash a score
  data, status_code, headers = api_instance.untrash_score_with_http_info(score)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->untrash_score_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_score_comment

> <ScoreComment> update_score_comment(score, comment, body, opts)

Update an existing comment

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
comment = 'comment_example' # String | Unique identifier of a sheet music comment 
body = FlatApi::ScoreCommentUpdate.new # ScoreCommentUpdate | 
opts = {
  sharing_key: 'sharing_key_example' # String | This sharing key must be specified to access to a score or collection with a `privacy` mode set to `privateLink` and the current user is not a collaborator of the document. 
}

begin
  # Update an existing comment
  result = api_instance.update_score_comment(score, comment, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->update_score_comment: #{e}"
end
```

#### Using the update_score_comment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreComment>, Integer, Hash)> update_score_comment_with_http_info(score, comment, body, opts)

```ruby
begin
  # Update an existing comment
  data, status_code, headers = api_instance.update_score_comment_with_http_info(score, comment, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreComment>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->update_score_comment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **comment** | **String** | Unique identifier of a sheet music comment  |  |
| **body** | [**ScoreCommentUpdate**](ScoreCommentUpdate.md) |  |  |
| **sharing_key** | **String** | This sharing key must be specified to access to a score or collection with a &#x60;privacy&#x60; mode set to &#x60;privateLink&#x60; and the current user is not a collaborator of the document.  | [optional] |

### Return type

[**ScoreComment**](ScoreComment.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_score_track

> <ScoreTrack> update_score_track(score, track, body)

Update an audio or video track linked to a score

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::ScoreApi.new
score = 'score_example' # String | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. `ScoreDetails.id`) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with `drive-` (e.g. `drive-0B000000000`). 
track = 'track_example' # String | Unique identifier of a score audio track 
body = FlatApi::ScoreTrackUpdate.new # ScoreTrackUpdate | 

begin
  # Update an audio or video track linked to a score
  result = api_instance.update_score_track(score, track, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->update_score_track: #{e}"
end
```

#### Using the update_score_track_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScoreTrack>, Integer, Hash)> update_score_track_with_http_info(score, track, body)

```ruby
begin
  # Update an audio or video track linked to a score
  data, status_code, headers = api_instance.update_score_track_with_http_info(score, track, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScoreTrack>
rescue FlatApi::ApiError => e
  puts "Error when calling ScoreApi->update_score_track_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Unique identifier of the score document. This can be a Flat Score unique identifier (i.e. &#x60;ScoreDetails.id&#x60;) or, if the score is also a Google Drive file, the Drive file unique identifier prefixed with &#x60;drive-&#x60; (e.g. &#x60;drive-0B000000000&#x60;).  |  |
| **track** | **String** | Unique identifier of a score audio track  |  |
| **body** | [**ScoreTrackUpdate**](ScoreTrackUpdate.md) |  |  |

### Return type

[**ScoreTrack**](ScoreTrack.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

