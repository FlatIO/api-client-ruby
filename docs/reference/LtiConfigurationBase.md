# FlatApi::LtiConfigurationBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Configuration ID |  |
| **lti_version** | **String** | LTI version |  |
| **organization_id** | **String** | Organization ID | [optional] |
| **organization_name** | **String** | Organization name | [optional] |
| **creator_id** | **String** | ID of the user who created this configuration | [optional] |
| **creation_date** | **Time** | Configuration creation date |  |
| **last_used_date** | **Time** | Last time this configuration was used | [optional] |
| **status** | **String** | Configuration status indicator | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationBase.new(
  id: null,
  lti_version: null,
  organization_id: null,
  organization_name: null,
  creator_id: null,
  creation_date: null,
  last_used_date: null,
  status: null
)
```

