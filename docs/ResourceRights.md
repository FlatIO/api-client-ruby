# FlatApi::ResourceRights

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **acl_read** | **Boolean** | &#x60;True&#x60; if the current user can read the current document  | [default to false] |
| **acl_write** | **Boolean** | &#x60;True&#x60; if the current user can modify the current document.  If this is a right of a Collection, the capabilities of the associated user can be lower than this permission, check out the &#x60;capabilities&#x60; property as the end-user to have the complete possibilities with the collection.  | [default to false] |
| **acl_admin** | **Boolean** | &#x60;True&#x60; if the current user can manage the current document (i.e. share, delete)  If this is a right of a Collection, the capabilities of the associated user can be lower than this permission, check out the &#x60;capabilities&#x60; property as the end-user to have the complete possibilities with the collection.  | [default to false] |
| **is_collaborator** | **Boolean** | &#x60;True&#x60; if the current user is a collaborator of the current document (direct or via group).  | [default to false] |
| **collaborator_type** | **String** | The type of the collaborator for the resource  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ResourceRights.new(
  acl_read: null,
  acl_write: null,
  acl_admin: null,
  is_collaborator: null,
  collaborator_type: null
)
```

