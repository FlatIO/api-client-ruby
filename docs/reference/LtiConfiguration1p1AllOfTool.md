# FlatApi::LtiConfiguration1p1AllOfTool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product** | **String** | Product family code (e.g., canvas, moodle, schoology) | [optional] |
| **version** | **String** | Platform version string | [optional] |
| **instance_name** | **String** | Instance display name | [optional] |
| **instance_guid** | **String** | Unique instance identifier | [optional] |
| **instance_contact** | **String** | Contact email or handle for the instance | [optional] |
| **instance_domain** | **String** | Instance root domain | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfiguration1p1AllOfTool.new(
  product: null,
  version: null,
  instance_name: null,
  instance_guid: null,
  instance_contact: null,
  instance_domain: null
)
```

