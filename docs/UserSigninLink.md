# FlatApi::UserSigninLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL to use to sign in to this account | [optional] |
| **expiration_date** | **Time** | Date when the link expires | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserSigninLink.new(
  url: null,
  expiration_date: null
)
```

