# FlatApi::LtiConfigurationCreate1p1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | LTI 1.1 manual creation mode |  |
| **name** | **String** | Display name for LTI 1.1 credentials | [optional] |
| **lms** | **String** | LMS identifier for LTI 1.1 credentials | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationCreate1p1.new(
  mode: null,
  name: null,
  lms: null
)
```

