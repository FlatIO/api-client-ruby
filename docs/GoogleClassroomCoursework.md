# FlatApi::GoogleClassroomCoursework

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the coursework assigned by Classroom | [optional] |
| **state** | **String** | State of the coursework | [optional] |
| **alternate_link** | **String** | Absolute link to this coursework in the Classroom web UI | [optional] |
| **topic_id** | **String** | Identifier of the topic where the assignment is created | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::GoogleClassroomCoursework.new(
  id: null,
  state: null,
  alternate_link: null,
  topic_id: null
)
```

