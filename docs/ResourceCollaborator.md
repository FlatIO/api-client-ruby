# FlatApi::ResourceCollaborator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_read** | **Boolean** | &#x60;True&#x60; if the current user can read the current document  | [default to false] |
| **acl_write** | **Boolean** | &#x60;True&#x60; if the current user can modify the current document.  If this is a right of a Collection, the capabilities of the associated user can be lower than this permission, check out the &#x60;capabilities&#x60; property as the end-user to have the complete possibilities with the collection.  | [default to false] |
| **acl_admin** | **Boolean** | &#x60;True&#x60; if the current user can manage the current document (i.e. share, delete)  If this is a right of a Collection, the capabilities of the associated user can be lower than this permission, check out the &#x60;capabilities&#x60; property as the end-user to have the complete possibilities with the collection.  | [default to false] |
| **is_collaborator** | **Boolean** | &#x60;True&#x60; if the current user is a collaborator of the current document (direct or via group).  | [default to false] |
| **collaborator_type** | **String** | The type of the collaborator for the resource  | [optional] |
| **id** | **String** | The unique identifier of the permission | [optional] |
| **date** | **Time** | The date when the permission was added | [optional] |
| **score** | **String** | If this object is a permission of a score, this property will contain the unique identifier of the score | [optional] |
| **collection** | **String** | If this object is a permission of a collection, this property will contain the unique identifier of the collection | [optional] |
| **user** | [**UserPublic**](UserPublic.md) |  | [optional] |
| **group** | [**Group**](Group.md) |  | [optional] |
| **user_email** | **String** | If the collaborator is not a user of Flat yet, this field will contain their email.  | [optional] |
| **invited** | **Boolean** | If this property is &#x60;true&#x60;, this is still a pending invitation  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ResourceCollaborator.new(
  acl_read: null,
  acl_write: null,
  acl_admin: null,
  is_collaborator: null,
  collaborator_type: null,
  id: null,
  date: null,
  score: null,
  collection: null,
  user: null,
  group: null,
  user_email: null,
  invited: null
)
```

