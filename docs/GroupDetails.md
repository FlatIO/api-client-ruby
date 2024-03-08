# FlatApi::GroupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the group | [optional] |
| **name** | **String** | The displayable name of the group | [optional] |
| **type** | [**GroupType**](GroupType.md) |  | [optional] |
| **organization** | **String** | The unique identifier of the Organization owning the group | [optional] |
| **creation_date** | **Time** | The date when the group was create | [optional] |
| **users_count** | **Float** | The number of students in this group | [optional] |
| **read_only** | **Boolean** | &#x60;true&#x60; if the properties and members of this group are in in read-only  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::GroupDetails.new(
  id: null,
  name: null,
  type: null,
  organization: null,
  creation_date: null,
  users_count: null,
  read_only: null
)
```

