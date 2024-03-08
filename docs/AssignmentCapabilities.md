# FlatApi::AssignmentCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **can_edit** | **Boolean** | Whether the current user can edit the assignment  |  |
| **can_publish_in_class** | **Boolean** | Whether this assignment can be published in a class  |  |
| **can_publish_in_class_error** | [**AssignmentCapabilitiesCanPublishInClassError**](AssignmentCapabilitiesCanPublishInClassError.md) |  | [optional] |
| **can_archive** | **Boolean** | Whether the current user can archive the assignment  |  |
| **can_unarchive** | **Boolean** | Whether the current user can unarchive the assignment  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentCapabilities.new(
  can_edit: null,
  can_publish_in_class: null,
  can_publish_in_class_error: null,
  can_archive: null,
  can_unarchive: null
)
```

