# FlatApi::ScoreRevisionStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additions** | **Float** | The number of additions operations in the last revision | [optional] |
| **deletions** | **Float** | The number of deletions operations in the last revision | [optional] |
| **start_date** | **Time** | The date of the first action included in this revision | [optional] |
| **end_date** | **Time** | The date of the latest action included in this revision | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreRevisionStatistics.new(
  additions: null,
  deletions: null,
  start_date: null,
  end_date: null
)
```

