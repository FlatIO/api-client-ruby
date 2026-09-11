# FlatApi::OmrJobFileMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_of_pages** | **Integer** | Total number of pages across all input files. | [optional] |
| **file_count** | **Integer** | Number of input files attached. | [optional] |
| **filename** | **String** | Original filename of the input as uploaded (of the first file when several were combined). | [optional] |
| **file_size** | **Integer** | Combined size of the input files, in bytes. | [optional] |
| **mime_type** | **String** | MIME type of the input (of the first file when several were combined). | [optional] |
| **file_extension** | **String** | File extension of the input, without the leading dot (for example &#x60;pdf&#x60;). | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobFileMetadata.new(
  number_of_pages: null,
  file_count: null,
  filename: null,
  file_size: null,
  mime_type: null,
  file_extension: null
)
```

