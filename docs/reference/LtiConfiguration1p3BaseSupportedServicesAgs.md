# FlatApi::LtiConfiguration1p3BaseSupportedServicesAgs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | Whether AGS claims were detected in launches from this platform | [optional] |
| **version** | **String** | AGS version supported (e.g., \&quot;2.0\&quot;) | [optional] |
| **enabled** | **Boolean** | Whether we have AGS enabled for this platform | [optional] |
| **lineitems_url** | **String** | Base URL for line items operations as provided by the platform | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfiguration1p3BaseSupportedServicesAgs.new(
  available: null,
  version: null,
  enabled: null,
  lineitems_url: null
)
```

