# FlatApi::EduResourceUseInClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **classroom** | **String** | The destination classroom where the resource will be copied. |  |
| **assignment** | **String** | An optional destination assignment where the original assignement will be copied. Must be a draft. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceUseInClass.new(
  classroom: null,
  assignment: null
)
```

