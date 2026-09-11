# FlatApi::LtiConfiguration1p1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Configuration ID |  |
| **lti_version** | **String** | LTI version (1.1) |  |
| **organization_id** | **String** | Organization ID | [optional] |
| **organization_name** | **String** | Organization name | [optional] |
| **creator_id** | **String** | ID of the user who created this configuration | [optional] |
| **creation_date** | **Time** | Configuration creation date |  |
| **last_used_date** | **Time** | Last time this configuration was used | [optional] |
| **status** | **String** | Configuration status indicator | [optional] |
| **consumer_key** | **String** | LTI 1.1 consumer key | [optional] |
| **consumer_secret** | **String** | LTI 1.1 consumer secret (only included for admins) | [optional] |
| **lms** | **String** | LMS type | [optional] |
| **name** | **String** | Configuration name | [optional] |
| **tool** | [**LtiConfiguration1p1AllOfTool**](LtiConfiguration1p1AllOfTool.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfiguration1p1.new(
  id: null,
  lti_version: null,
  organization_id: null,
  organization_name: null,
  creator_id: null,
  creation_date: null,
  last_used_date: null,
  status: null,
  consumer_key: null,
  consumer_secret: null,
  lms: null,
  name: null,
  tool: null
)
```

