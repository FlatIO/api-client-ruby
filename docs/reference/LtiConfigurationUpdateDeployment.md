# FlatApi::LtiConfigurationUpdateDeployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_id** | **String** | Deployment identifier provided by the platform | [optional] |
| **deployment_breakdown_id** | **String** | Specific tenant identifier for multi-tenant platforms | [optional] |
| **enable_email_matching** | **Boolean** | Enable email-based user matching during LTI authentication | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationUpdateDeployment.new(
  deployment_id: null,
  deployment_breakdown_id: null,
  enable_email_matching: null
)
```

