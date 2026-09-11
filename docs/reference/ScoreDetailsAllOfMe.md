# FlatApi::ScoreDetailsAllOfMe

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_liked** | **Boolean** | True if the current user likes this score |  |
| **is_in_library** | **Boolean** | True if the score is stored in one of the user&#39;s collections |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreDetailsAllOfMe.new(
  is_liked: null,
  is_in_library: null
)
```

