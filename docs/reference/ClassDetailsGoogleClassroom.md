# FlatApi::ClassDetailsGoogleClassroom

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The course identifier on Google Classroom | [optional] |
| **alternate_link** | **String** | Absolute link to this course in the Classroom web UI | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassDetailsGoogleClassroom.new(
  id: null,
  alternate_link: null
)
```

