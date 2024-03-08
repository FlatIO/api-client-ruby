# FlatApi::UserAzureDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oid** | **String** | User object identifier on Azure AD | [optional] |
| **hd** | **String** | User tenant (domain name) | [optional] |
| **preferred_username** | **String** | User Preferred Username (UPN), i.e. the main email of the user | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserAzureDetails.new(
  oid: null,
  hd: null,
  preferred_username: null
)
```

