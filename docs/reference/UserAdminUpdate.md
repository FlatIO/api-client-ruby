# FlatApi::UserAdminUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **password** | **String** | Password of the account | [optional] |
| **organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  | [optional] |
| **username** | **String** | Username of the account | [optional] |
| **firstname** | **String** | First name of the user | [optional] |
| **lastname** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email of the account | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserAdminUpdate.new(
  password: null,
  organization_role: null,
  username: null,
  firstname: null,
  lastname: null,
  email: null
)
```

