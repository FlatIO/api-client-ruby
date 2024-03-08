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
| **creation_date** | **Time** | The date when the resource was created | [optional] |
| **update_date** | **Time** | The date when the resource was updated | [optional] |
| **resource** | [**EduResourceResource**](EduResourceResource.md) |  | [optional] |
| **capabilities** | [**EduResourceCapabilities**](EduResourceCapabilities.md) |  |  |

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
  creation_date: null,
  update_date: null,
  resource: null,
  capabilities: null
)
```

