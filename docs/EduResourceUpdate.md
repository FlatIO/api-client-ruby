# FlatApi::EduResourceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the resource | [optional] |
| **privacy** | [**EduResourcePrivacy**](EduResourcePrivacy.md) |  | [optional][default to &#39;private&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceUpdate.new(
  title: null,
  privacy: null
)
```

