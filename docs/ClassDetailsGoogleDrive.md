# FlatApi::ClassDetailsGoogleDrive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **teacher_folder_id** | **String** | [Teachers only] The Drive directory identifier of the teachers&#39; folder  | [optional] |
| **teacher_folder_alternate_link** | **String** | [Teachers only] The Drive URL of the teachers&#39; folder  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassDetailsGoogleDrive.new(
  teacher_folder_id: null,
  teacher_folder_alternate_link: null
)
```

