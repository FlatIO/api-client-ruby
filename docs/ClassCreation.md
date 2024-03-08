# FlatApi::ClassCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the new class |  |
| **section** | **String** | The section of the new class | [optional] |
| **level** | [**ClassGradeLevel**](ClassGradeLevel.md) |  | [optional] |
| **skills_focused** | **Array&lt;String&gt;** | Specific skills that will be focused in classroom | [optional] |
| **size** | **Float** | Number of students in the classroom | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassCreation.new(
  name: null,
  section: null,
  level: null,
  skills_focused: null,
  size: null
)
```

