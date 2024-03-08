# FlatApi::ScoreLikesCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | The total number of likes of the score | [default to 0] |
| **weekly** | **Float** | The number of new likes during the last week | [default to 0] |
| **monthly** | **Float** | The number of new likes during the last month | [default to 0] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreLikesCounts.new(
  total: null,
  weekly: null,
  monthly: null
)
```

