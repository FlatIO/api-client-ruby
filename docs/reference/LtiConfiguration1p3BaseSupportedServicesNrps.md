# FlatApi::LtiConfiguration1p3BaseSupportedServicesNrps

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available** | **Boolean** | Whether NRPS claims were detected in launches from this platform | [optional] |
| **version** | **String** | NRPS version supported (e.g., \&quot;2.0\&quot;) | [optional] |
| **enabled** | **Boolean** | Whether NRPS is enabled for this platform | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfiguration1p3BaseSupportedServicesNrps.new(
  available: null,
  version: null,
  enabled: null
)
```

