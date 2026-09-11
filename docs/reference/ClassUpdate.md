# FlatApi::ClassUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the class | [optional] |
| **section** | **String** | The section of the class | [optional] |
| **level** | [**ClassGradeLevel**](ClassGradeLevel.md) |  | [optional] |
| **skills_focused** | **Array&lt;String&gt;** | Specific skills that will be focused in classroom | [optional] |
| **size** | **Float** | Number of students in the classroom | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassUpdate.new(
  name: null,
  section: null,
  level: null,
  skills_focused: null,
  size: null
)
```

