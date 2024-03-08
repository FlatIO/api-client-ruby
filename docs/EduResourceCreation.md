# FlatApi::EduResourceCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**EduResourceType**](EduResourceType.md) |  |  |
| **title** | **String** | Title of the resource |  |
| **parent** | **String** | Identifier of the parent resource where the new one will created, e.g. a folder id or &#x60;root&#x60; | [optional][default to &#39;root&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceCreation.new(
  type: null,
  title: null,
  parent: null
)
```

