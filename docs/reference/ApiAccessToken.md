# FlatApi::ApiAccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this private token | [optional] |
| **name** | **String** | Name of the personal access token | [optional] |
| **token** | **String** | The token. This token will only be returned once, then only the first 4 characters will be returned.  | [optional] |
| **issued_date** | **Time** | The date then this token was issued  | [optional] |
| **expiration_date** | **Time** | The date then this token will expire  | [optional] |
| **scopes** | [**Array&lt;AppScopes&gt;**](AppScopes.md) | The list of scopes associated to the token  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ApiAccessToken.new(
  id: null,
  name: null,
  token: null,
  issued_date: null,
  expiration_date: null,
  scopes: null
)
```

