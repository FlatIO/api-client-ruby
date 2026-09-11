# FlatApi::ScoreCommentModeration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hidden** | **Boolean** | If true, this comment will be hidden from other users | [optional] |
| **reason** | **String** | If the comment is hidden, the reason why this one has been moderated | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCommentModeration.new(
  hidden: null,
  reason: null
)
```

