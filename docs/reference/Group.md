# FlatApi::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the group | [optional] |
| **name** | **String** | The display name of the group | [optional] |
| **type** | [**GroupType**](GroupType.md) |  | [optional] |
| **users_count** | **Float** | The number of users in this group | [optional] |
| **read_only** | **Boolean** | &#x60;True&#x60; if the group is set in read-only  | [optional] |
| **organization** | **String** | If the group is related to an organization, this field will contain the unique identifier of the organization  | [optional] |
| **creation_date** | **Time** | The creation date of the group | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::Group.new(
  id: null,
  name: null,
  type: null,
  users_count: null,
  read_only: null,
  organization: null,
  creation_date: null
)
```

