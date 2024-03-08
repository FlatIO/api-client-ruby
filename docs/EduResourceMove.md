# FlatApi::EduResourceMove

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | **String** | Unique identifier of the destination of the folder where to move this resource. This can also be &#x60;root&#x60; to move the resource at the root of the user resource library.  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceMove.new(
  destination: null
)
```

