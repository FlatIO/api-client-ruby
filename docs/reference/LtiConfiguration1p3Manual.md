# FlatApi::LtiConfiguration1p3Manual

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Configuration ID |  |
| **lti_version** | **String** | LTI version (1.3) |  |
| **organization_id** | **String** | Organization ID | [optional] |
| **organization_name** | **String** | Organization name | [optional] |
| **creator_id** | **String** | ID of the user who created this configuration | [optional] |
| **creation_date** | **Time** | Configuration creation date |  |
| **last_used_date** | **Time** | Last time this configuration was used | [optional] |
| **status** | **String** | Configuration status indicator | [optional] |
| **mode** | **String** | Manual LTI 1.3 configuration mode | [optional] |
| **platform_iss** | **String** | Platform issuer URL | [optional] |
| **platform_name** | **String** | Platform display name | [optional] |
| **client_id** | **String** | OAuth2 client_id allocated by the platform | [optional] |
| **deployment_id** | **String** | Deployment ID linking the tool to a tenant/class (varies by platform) | [optional] |
| **access_token_url** | **String** | OAuth2 token endpoint (for AGS/NRPS) | [optional] |
| **authorization_url** | **String** | OIDC authorization/login endpoint | [optional] |
| **jwks_url** | **String** | Platform JWKS endpoint (public keys) | [optional] |
| **deployment_mode** | **String** | Deployment mode (single for organization-specific, multi for shared parent platforms) | [optional] |
| **supported_services** | [**LtiConfiguration1p3BaseSupportedServices**](LtiConfiguration1p3BaseSupportedServices.md) |  | [optional] |
| **tool** | [**LtiConfiguration1p3BaseTool**](LtiConfiguration1p3BaseTool.md) |  | [optional] |
| **public_keyset_url** | **String** | Public keyset URL for the platform to retrieve Flat&#39;s public keys | [optional] |
| **initiate_login_url** | **String** | URL for the platform to initiate LTI login | [optional] |
| **redirect_uris** | **Array&lt;String&gt;** | Allowed redirect URIs for LTI launches | [optional] |
| **enable_email_matching** | **Boolean** | Enable email-based user matching during LTI authentication.  When true (default): If a user with the same email exists in the organization, they will be matched and logged in instead of creating a new account.  When false: Email matching is disabled. Only LTI ID matching is used, which means multiple LTI users can share the same email address and have separate Flat accounts. This is useful for cases like siblings sharing a parent email in the LMS.  | [optional][default to true] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiConfiguration1p3Manual.new(
  id: null,
  lti_version: null,
  organization_id: null,
  organization_name: null,
  creator_id: null,
  creation_date: null,
  last_used_date: null,
  status: null,
  mode: null,
  platform_iss: null,
  platform_name: null,
  client_id: null,
  deployment_id: null,
  access_token_url: null,
  authorization_url: null,
  jwks_url: null,
  deployment_mode: null,
  supported_services: null,
  tool: null,
  public_keyset_url: null,
  initiate_login_url: null,
  redirect_uris: null,
  enable_email_matching: null
)
```

