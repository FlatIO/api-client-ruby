# FlatApi::OmrLocaleDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | BCP 47 locale code. Always one of the codes listed in &#x60;locales&#x60;. |  |
| **name** | **String** | English name of the language, for display in a picker. |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrLocaleDetails.new(
  code: vi,
  name: Vietnamese
)
```

