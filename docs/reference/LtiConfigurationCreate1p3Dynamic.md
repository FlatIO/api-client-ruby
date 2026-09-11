# FlatApi::LtiConfigurationCreate1p3Dynamic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | LTI 1.3 dynamic registration mode |  |
| **platform_info** | [**LtiConfigurationCreate1p3DynamicPlatformInfo**](LtiConfigurationCreate1p3DynamicPlatformInfo.md) |  | [optional] |
| **locale** | **String** | Optional locale code for registration URL. Input values will be automatically normalized to a supported locale code. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationCreate1p3Dynamic.new(
  mode: null,
  platform_info: null,
  locale: null
)
```

