# FlatApi::AssignmentCopyToClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classroom** | **String** | The destination classroom where the assignment will be copied |  |
| **assignment** | **String** | An optional destination assignment where the original assignement will be copied. Must be a draft. | [optional] |
| **scheduled_date** | **Time** | The publication (scheduled) date of the assignment. If this one is specified, the assignment will only be listed to the teachers of the class. Alternatively the existing &#x60;scheduledDate&#x60; from the copied assignment will be used.  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentCopyToClass.new(
  classroom: null,
  assignment: null,
  scheduled_date: null
)
```

