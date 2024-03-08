# FlatApi::MicrosoftGraphAssignment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Identifier of the assignement assigned by Microsoft Teams | [optional] |
| **state** | **String** | State of the assignment | [optional] |
| **alternate_link** | **String** | Absolute link to this assignement in the Microsoft Teams web UI | [optional] |
| **categories** | **Array&lt;String&gt;** | List of categories where this assignment is published under | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::MicrosoftGraphAssignment.new(
  id: null,
  state: null,
  alternate_link: null,
  categories: null
)
```

