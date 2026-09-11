# FlatApi::LtiConfigurationCreate1p3Deployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | LTI 1.3 deployment-based creation mode |  |
| **deployment_type** | **String** | Parent platform key (e.g., canvas, blackboard, schoology, classlink) |  |
| **deployment_id** | **String** | Deployment identifier provided by the platform |  |
| **client_id** | **String** | OAuth2 client_id for the tenant; required for ClassLink deployments | [optional] |
| **deployment_breakdown_id** | **String** | Value of the custom claim that identifies this specific tenant (for multi-tenant platforms like Schoology) | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationCreate1p3Deployment.new(
  mode: null,
  deployment_type: null,
  deployment_id: null,
  client_id: null,
  deployment_breakdown_id: null
)
```

