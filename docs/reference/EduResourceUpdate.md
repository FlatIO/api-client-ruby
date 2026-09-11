# FlatApi::EduResourceUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the resource | [optional] |
| **sharing_description** | **String** | Sharing description of the resource | [optional] |
| **sharing_description_html** | **String** | HTML version of sharing description with rich text formatting.  Supports safe HTML tags: p, br, strong, b, em, i, u, a.  | [optional] |
| **privacy** | [**EduResourcePrivacy**](EduResourcePrivacy.md) |  | [optional][default to &#39;private&#39;] |
| **subjects** | [**Array&lt;TeachingTheme&gt;**](TeachingTheme.md) | The subjects of this resource, or the subjects of the resources included in the folder | [optional] |
| **grades** | [**Array&lt;Grade&gt;**](Grade.md) | The grades of this resource, or the grades of the resources included in the folder. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceUpdate.new(
  title: null,
  sharing_description: null,
  sharing_description_html: null,
  privacy: null,
  subjects: null,
  grades: null
)
```

