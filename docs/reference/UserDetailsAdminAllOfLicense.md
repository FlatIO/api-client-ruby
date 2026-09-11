# FlatApi::UserDetailsAdminAllOfLicense

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the current license | [optional] |
| **expiration_date** | **Time** | Date when the license expires | [optional] |
| **source** | [**LicenseSources**](LicenseSources.md) |  | [optional][default to &#39;order&#39;] |
| **mode** | [**LicenseMode**](LicenseMode.md) |  | [optional] |
| **active** | **Boolean** | ID of the current license | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserDetailsAdminAllOfLicense.new(
  id: null,
  expiration_date: null,
  source: null,
  mode: null,
  active: null
)
```

