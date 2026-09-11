# FlatApi::OmrJobInputFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | File data, base64-encoded. The type is read from the content itself, so no declared MIME type or filename extension is needed. Accepted types are listed by &#x60;getOmrCapabilities&#x60; in &#x60;acceptedMimeTypes&#x60;.  |  |
| **filename** | **String** | Optional original filename, kept for display. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobInputFile.new(
  file: null,
  filename: null
)
```

