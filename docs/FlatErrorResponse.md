# FlatApi::FlatErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A corresponding code for this error |  |
| **message** | **String** | A printable message for this error |  |
| **id** | **String** | An unique error identifier generated for the request | [optional] |
| **param** | **String** | The related parameter that caused the error | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::FlatErrorResponse.new(
  code: null,
  message: null,
  id: null,
  param: null
)
```

