# FlatApi::OrganizationInvitationCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address you want to send the invitation to | [optional] |
| **organization_role** | **String** | User&#39;s Organization Role | [optional][default to &#39;teacher&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OrganizationInvitationCreation.new(
  email: null,
  organization_role: null
)
```

