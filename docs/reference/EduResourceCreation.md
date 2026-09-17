# FlatApi::EduResourceCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EduResourceType**](EduResourceType.md) |  |  |
| **title** | **String** | Title of the resource |  |
| **parent** | **String** | Identifier of the parent resource where the new one will be created, e.g. a folder id or &#x60;root&#x60; | [optional][default to &#39;root&#39;] |
| **sharing_description** | **String** | Sharing description of the resource | [optional] |
| **sharing_description_html** | **String** | HTML version of sharing description with rich text formatting.  Supports safe HTML tags: p, br, strong, b, em, i, u, a.  | [optional] |
| **resource** | [**EduResourceAssignmentCreation**](EduResourceAssignmentCreation.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceCreation.new(
  type: null,
  title: null,
  parent: null,
  sharing_description: null,
  sharing_description_html: null,
  resource: null
)
```

