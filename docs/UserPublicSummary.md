# FlatApi::UserPublicSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user unique identifier |  |
| **type** | **String** | The type of user account |  |
| **product** | [**TutteoProduct**](TutteoProduct.md) |  | [default to &#39;flat&#39;] |
| **username** | **String** | The user name (unique for the organization) |  |
| **printable_name** | **String** | The name that can be directly printed (name, firstname &amp; lastname, or username) | [optional] |
| **firstname** | **String** | Firstname of the user (for education users) | [optional] |
| **lastname** | **String** | Lastname of the user (for education users) | [optional] |
| **name** | **String** | A displayable name for the user (for consumer users) | [optional] |
| **picture** | **String** | The URL of the picture to display |  |
| **badges** | **Array&lt;String&gt;** | List of badges for the user profile:  - &#x60;power&#x60; - &#x60;staff&#x60; - &#x60;composerOfTheMonth&#x60; - &#x60;ambassador&#x60; - &#x60;challenge&#x60;  | [optional] |
| **organization** | **String** | Organization ID (for Edu users only) | [optional] |
| **organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  | [optional] |
| **class_role** | [**ClassRoles**](ClassRoles.md) |  | [optional] |
| **html_url** | **String** | Link to user profile (for Indiv. users only) | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserPublicSummary.new(
  id: null,
  type: null,
  product: null,
  username: null,
  printable_name: null,
  firstname: null,
  lastname: null,
  name: null,
  picture: null,
  badges: null,
  organization: null,
  organization_role: null,
  class_role: null,
  html_url: null
)
```

