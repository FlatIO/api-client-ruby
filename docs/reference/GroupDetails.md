# FlatApi::GroupDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the group |  |
| **name** | **String** | The displayable name of the group |  |
| **type** | [**GroupType**](GroupType.md) |  |  |
| **organization** | **String** | The unique identifier of the Organization owning the group | [optional] |
| **classroom** | **String** | The unique identifier of the classroom owning the group. Only available for groups of type &#39;classStudentsSubGroup&#39; or &#39;assignmentStudentsSubGroup&#39; | [optional] |
| **assignment** | **String** | The unique identifier of the assignment owning the group. Only available for groups of type &#39;assignmentStudentsSubGroup&#39;. | [optional] |
| **parent** | **String** | The unique identifier of the parent class group. Only available for groups of type &#39;assignmentStudentsSubGroup&#39;. May be null if the parent class group was deleted. | [optional] |
| **creation_date** | **Time** | The date when the group was created |  |
| **users_count** | **Float** | The number of students in this group |  |
| **read_only** | **Boolean** | &#x60;true&#x60; if the properties and members of this group are read-only  |  |
| **tags** | **Array&lt;String&gt;** | Tags for categorizing groups.  * &#x60;edu:testing-students&#x60;: Marks this group as containing test student accounts  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::GroupDetails.new(
  id: null,
  name: null,
  type: null,
  organization: null,
  classroom: null,
  assignment: null,
  parent: null,
  creation_date: null,
  users_count: null,
  read_only: null,
  tags: null
)
```

