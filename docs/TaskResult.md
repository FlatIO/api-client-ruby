# FlatApi::TaskResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL returned by the task worker | [optional] |
| **error** | **String** | Error returned by task worker | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::TaskResult.new(
  url: null,
  error: null
)
```

