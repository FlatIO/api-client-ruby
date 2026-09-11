# FlatApi::AssignmentCopyToResourceLibrary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **library_parent** | **String** | Identifier of the parent resource where the new one will created, e.g. a folder id or &#x60;root&#x60; |  |
| **verify_if_not_already_in_resource_library** | **Boolean** | Option to check if the assignment is already in Resource Library | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentCopyToResourceLibrary.new(
  library_parent: null,
  verify_if_not_already_in_resource_library: null
)
```

