# FlatApi::AssignmentGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the group |  |
| **name** | **String** | The display name of the group |  |
| **parent** | **String** | The unique identifier of the parent class group. Only available for groups of type &#39;assignmentStudentsSubGroup&#39;. May be null if the parent class group was deleted. | [optional] |
| **members** | **Array&lt;String&gt;** | Array of user IDs that are members of this group |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentGroup.new(
  id: null,
  name: null,
  parent: null,
  members: null
)
```

