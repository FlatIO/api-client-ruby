# FlatApi::EduResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Resource unique identifier |  |
| **creator** | **String** | The User identifier of the resource creator | [optional] |
| **type** | [**EduResourceType**](EduResourceType.md) |  |  |
| **privacy** | [**EduResourcePrivacy**](EduResourcePrivacy.md) |  | [optional][default to &#39;private&#39;] |
| **tags** | **Array&lt;String&gt;** | Specific attributes for the resource (e.g. sample resources with custom design) | [optional] |
| **parent** | **String** | Identifier of the parent resource, e.g. a folder or root | [optional] |
| **title** | **String** | Title of the resource |  |
| **sharing_description** | **String** | Sharing description of this resource | [optional] |
| **sharing_description_html** | **String** | HTML version of sharing description with rich text formatting.  Supports safe HTML tags: p, br, strong, b, em, i, u, a.  | [optional] |
| **creation_date** | **Time** | The date when the resource was created | [optional] |
| **update_date** | **Time** | The date when the resource was updated | [optional] |
| **resource** | [**EduResourceResource**](EduResourceResource.md) |  | [optional] |
| **capabilities** | [**EduResourceCapabilities**](EduResourceCapabilities.md) |  |  |
| **subjects** | [**Array&lt;TeachingTheme&gt;**](TeachingTheme.md) | The subjects of this resource, or the subjects of the resources included in the folder | [optional] |
| **grades** | [**Array&lt;Grade&gt;**](Grade.md) | The grades of this resource, or the grades of the resources included in the folder. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResource.new(
  id: null,
  creator: null,
  type: null,
  privacy: null,
  tags: null,
  parent: null,
  title: null,
  sharing_description: null,
  sharing_description_html: null,
  creation_date: null,
  update_date: null,
  resource: null,
  capabilities: null,
  subjects: null,
  grades: null
)
```

