# FlatApi::FlatErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | A corresponding code for this error |  |
| **message** | **String** | A printable message for this error |  |
| **id** | **String** | An unique error identifier generated for the request | [optional] |
| **param** | **String** | The related parameter that caused the error | [optional] |
| **provider_message** | **String** | The untranslated error message returned by an external provider (e.g. Google Classroom), when the error originates from one. Only set on errors forwarded from a third party.  Meant for support and IT: display it alongside &#x60;message&#x60;, never in place of it. &#x60;message&#x60; is the localized, user-facing text; this field is raw provider output and is always in English.  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::FlatErrorResponse.new(
  code: null,
  message: null,
  id: null,
  param: null,
  provider_message: null
)
```

