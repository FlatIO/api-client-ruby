# FlatApi::ScoreCommentsCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | The total number of comments added to the score | [optional] |
| **unique** | **Float** | The unique (1/user) number of comments added to the score | [optional] |
| **weekly** | **Float** | The weekly unique number of comments added to the score | [optional] |
| **monthly** | **Float** | The monthly unique number of comments added to the score | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCommentsCounts.new(
  total: null,
  unique: null,
  weekly: null,
  monthly: null
)
```

