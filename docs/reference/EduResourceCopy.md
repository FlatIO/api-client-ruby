# FlatApi::EduResourceCopy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination** | **String** | Unique identifier of the destination of the folder where to copy this resource. This can also be &#x60;root&#x60; to copy the resource at the root of the user resource library.  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceCopy.new(
  destination: null
)
```

