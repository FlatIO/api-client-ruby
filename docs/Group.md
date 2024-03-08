# FlatApi::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the group | [optional] |
| **name** | **String** | The display name of the group | [optional] |
| **type** | **String** | The type of the group: * &#x60;generic&#x60;: A group created by a Flat user * &#x60;classTeachers&#x60;: A group created automaticaly by Flat that contains   the teachers of a class * &#x60;classStudents&#x60;: A group created automaticaly by Flat that contains   the studnets of a class  | [optional] |
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

