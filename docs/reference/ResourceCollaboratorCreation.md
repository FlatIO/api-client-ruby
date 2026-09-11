# FlatApi::ResourceCollaboratorCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | The unique identifier of a Flat user | [optional] |
| **group** | **String** | The unique identifier of a Flat group | [optional] |
| **user_email** | **String** | Fill this field to invite an individual user by email.  | [optional] |
| **user_token** | **String** | Token received in an invitation to join the score.  | [optional] |
| **acl_read** | **Boolean** | &#x60;True&#x60; if the related user can read the score. (probably true if the user has a permission on the document).  | [optional][default to true] |
| **acl_write** | **Boolean** | &#x60;True&#x60; if the related user can modify the score.  | [optional][default to false] |
| **acl_admin** | **Boolean** | &#x60;True&#x60; if the related user can can manage the current document, i.e. changing the document permissions and deleting the document  | [optional][default to false] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ResourceCollaboratorCreation.new(
  user: null,
  group: null,
  user_email: null,
  user_token: null,
  acl_read: null,
  acl_write: null,
  acl_admin: null
)
```

