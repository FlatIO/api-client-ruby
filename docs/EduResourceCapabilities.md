# FlatApi::EduResourceCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **can_edit** | **Boolean** | Whether the current user can modify this resource  | [optional] |
| **can_add_resources** | **Boolean** | Whether the current user can add resources within this resource (e.g. &#x60;assignment&#x60; inside a &#x60;folder&#x60;)  | [optional] |
| **can_add_folders** | **Boolean** | Whether the current user can add folders within this resource (e.g. &#x60;folder&#x60; inside &#x60;root&#x60;)  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::EduResourceCapabilities.new(
  can_edit: null,
  can_add_resources: null,
  can_add_folders: null
)
```

