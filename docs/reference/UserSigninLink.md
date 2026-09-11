# FlatApi::UserSigninLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to use to sign in to this account | [optional] |
| **token** | **String** | Raw sign-in token, can be used to build custom URLs (e.g. deep links) | [optional] |
| **expiration_date** | **Time** | Date when the link expires | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserSigninLink.new(
  url: null,
  token: null,
  expiration_date: null
)
```

