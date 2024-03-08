# FlatApi::AssignmentSubmissionComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The comment unique identifier | [optional] |
| **user** | **String** | The author unique identifier | [optional] |
| **submission** | **String** | The submission unique identifier | [optional] |
| **date** | **Time** | The date when the comment was posted | [optional] |
| **modification_date** | **Time** | The date of the last comment modification | [optional] |
| **comment** | **String** | The comment text | [optional] |
| **unread** | **Boolean** | True if the comment is unread by the current user | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentSubmissionComment.new(
  id: null,
  user: null,
  submission: null,
  date: null,
  modification_date: null,
  comment: null,
  unread: null
)
```

