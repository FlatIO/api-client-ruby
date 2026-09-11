# FlatApi::ScoreLikesCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Float** | The total number of likes of the score | [optional] |
| **weekly** | **Float** | The number of new likes during the last week | [optional] |
| **monthly** | **Float** | The number of new likes during the last month | [optional] |
| **yearly** | **Float** | The number of new likes during the last year | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreLikesCounts.new(
  total: null,
  weekly: null,
  monthly: null,
  yearly: null
)
```

