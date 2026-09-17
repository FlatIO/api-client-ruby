# FlatApi::TaskResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the generated file, when the task produces one | [optional] |
| **error** | **String** | Error message, when the task failed | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::TaskResult.new(
  url: null,
  error: null
)
```

