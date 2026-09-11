# FlatApi::LtiConfigurationUpdateStandalone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deployment_id** | **String** | Deployment identifier provided by the platform | [optional] |
| **platform_iss** | **String** | Platform issuer URL | [optional] |
| **platform_name** | **String** | Platform display name | [optional] |
| **client_id** | **String** | OAuth2 client_id allocated by the platform | [optional] |
| **access_token_url** | **String** | Platform access token endpoint URL | [optional] |
| **authorization_url** | **String** | Platform OIDC authorization endpoint URL | [optional] |
| **jwks_url** | **String** | Platform JWKS endpoint URL for public keys | [optional] |
| **enable_email_matching** | **Boolean** | Enable email-based user matching during LTI authentication | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfigurationUpdateStandalone.new(
  deployment_id: null,
  platform_iss: null,
  platform_name: null,
  client_id: null,
  access_token_url: null,
  authorization_url: null,
  jwks_url: null,
  enable_email_matching: null
)
```

