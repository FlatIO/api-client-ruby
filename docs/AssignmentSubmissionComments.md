# FlatApi::AssignmentSubmissionComments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | The total number of comments added to the submission | [optional] |
| **unread** | **Float** | The number of unread comments for the current user | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentSubmissionComments.new(
  total: null,
  unread: null
)
```

