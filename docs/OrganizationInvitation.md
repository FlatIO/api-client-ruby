# FlatApi::OrganizationInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The invitation unique identifier | [optional] |
| **creation_date** | **Time** | The creation date of the invitation | [optional] |
| **organization** | **String** | The unique identifier of the Organization owning this class |  |
| **organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  |  |
| **custom_code** | **String** | Enrollment code to use when joining this organization |  |
| **email** | **String** | The email address this invitation was sent to | [optional] |
| **invited_by** | **String** | The unique identifier of the User who created this invitation | [optional] |
| **allow_multiple_use** | **Boolean** | If true, the invitation can be used multiple times. If false, the invitation can only be used once.  |  |
| **used_by** | **Array&lt;String&gt;** | List of users who used this invitation | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OrganizationInvitation.new(
  id: null,
  creation_date: null,
  organization: null,
  organization_role: null,
  custom_code: null,
  email: null,
  invited_by: null,
  allow_multiple_use: null,
  used_by: null
)
```

