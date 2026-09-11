# FlatApi::OmrJobFileUploadResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_index** | **Integer** | 0-based index assigned to the uploaded file. | [optional] |
| **file_count** | **Integer** | Total number of files now attached to the job. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobFileUploadResult.new(
  file_index: null,
  file_count: null
)
```

