# FlatApi::GoogleClassroomSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the coursework submission assigned by Classroom |  |
| **state** | **String** | State of the submission on Google Classroom |  |
| **alternate_link** | **String** | Absolute link to this coursework in the Classroom web UI |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::GoogleClassroomSubmission.new(
  id: null,
  state: null,
  alternate_link: null
)
```

