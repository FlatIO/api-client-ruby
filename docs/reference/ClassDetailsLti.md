# FlatApi::ClassDetailsLti

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context_id** | **String** | Unique context identifier provided | [optional] |
| **context_title** | **String** | Context title | [optional] |
| **context_label** | **String** | Context label | [optional] |
| **has_nrps_service** | **Boolean** | If true, the class has been synchronized with the LTI 1.3 NRPS 2.0 service | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassDetailsLti.new(
  context_id: null,
  context_title: null,
  context_label: null,
  has_nrps_service: null
)
```

