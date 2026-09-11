# FlatApi::EduResourceFolder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the folder | [optional] |
| **assignments_types** | [**Array&lt;AssignmentType&gt;**](AssignmentType.md) | The assignment type of the resources that are included in the folder, | [optional] |
| **resources_count** | **Float** | The number of resources inside the folder | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceFolder.new(
  title: null,
  assignments_types: null,
  resources_count: null
)
```

