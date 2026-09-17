# FlatApi::EduLibrary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the library.  This one can be used to list the underlying resources using &#x60;GET /v2/eduResources?parent&#x3D;{library-id}&#x60;  |  |
| **name** | **String** | Name of the library |  |
| **type** | **String** | Type of the library |  |
| **visibility** | **String** | Visibility of the library |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduLibrary.new(
  id: null,
  name: null,
  type: null,
  visibility: null
)
```

