# FlatApi::OrganizationApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**count_orga_users**](OrganizationApi.md#count_orga_users) | **GET** /organizations/users/count | Count the organization users using the provided filters |
| [**create_lti_credentials**](OrganizationApi.md#create_lti_credentials) | **POST** /organizations/lti/credentials | Create a new couple of LTI 1.x credentials |
| [**create_organization_invitation**](OrganizationApi.md#create_organization_invitation) | **POST** /organizations/invitations | Create a new invitation to join the organization |
| [**create_organization_user**](OrganizationApi.md#create_organization_user) | **POST** /organizations/users | Create a new user account |
| [**create_organization_user_access_token**](OrganizationApi.md#create_organization_user_access_token) | **POST** /organizations/users/{user}/accessToken | Create a delegated API access token for an organization user |
| [**create_organization_user_signin_link**](OrganizationApi.md#create_organization_user_signin_link) | **POST** /organizations/users/{user}/signinLink | Create a sign in link for an organization user |
| [**list_lti_credentials**](OrganizationApi.md#list_lti_credentials) | **GET** /organizations/lti/credentials | List LTI 1.x credentials |
| [**list_organization_invitations**](OrganizationApi.md#list_organization_invitations) | **GET** /organizations/invitations | List the organization invitations |
| [**list_organization_users**](OrganizationApi.md#list_organization_users) | **GET** /organizations/users | List the organization users |
| [**remove_organization_invitation**](OrganizationApi.md#remove_organization_invitation) | **DELETE** /organizations/invitations/{invitation} | Remove an organization invitation |
| [**remove_organization_user**](OrganizationApi.md#remove_organization_user) | **DELETE** /organizations/users/{user} | Remove an account from Flat |
| [**revoke_lti_credentials**](OrganizationApi.md#revoke_lti_credentials) | **DELETE** /organizations/lti/credentials/{credentials} | Revoke LTI 1.x credentials |
| [**update_organization_user**](OrganizationApi.md#update_organization_user) | **PUT** /organizations/users/{user} | Update account information |


## count_orga_users

> <Array<UserDetailsAdmin>> count_orga_users(opts)

Count the organization users using the provided filters

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
opts = {
  role: ['user'], # Array<String> | Filter users by role
  q: 'q_example', # String | The query to search
  group: ['inner_example'], # Array<String> | Filter users by group
  no_active_license: true # Boolean | Filter users who don't have an active license
}

begin
  # Count the organization users using the provided filters
  result = api_instance.count_orga_users(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->count_orga_users: #{e}"
end
```

#### Using the count_orga_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserDetailsAdmin>>, Integer, Hash)> count_orga_users_with_http_info(opts)

```ruby
begin
  # Count the organization users using the provided filters
  data, status_code, headers = api_instance.count_orga_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserDetailsAdmin>>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->count_orga_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | [**Array&lt;String&gt;**](String.md) | Filter users by role | [optional] |
| **q** | **String** | The query to search | [optional] |
| **group** | [**Array&lt;String&gt;**](String.md) | Filter users by group | [optional] |
| **no_active_license** | **Boolean** | Filter users who don&#39;t have an active license | [optional] |

### Return type

[**Array&lt;UserDetailsAdmin&gt;**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lti_credentials

> <LtiCredentials> create_lti_credentials(body)

Create a new couple of LTI 1.x credentials

Flat for Education is a Certified LTI Provider. You can use these API methods to automate the creation of LTI credentials. You can read more about our LTI implementation, supported components and LTI Endpoints in our [Developer Documentation](https://flat.io/developers/docs/lti/). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
body = FlatApi::LtiCredentialsCreation.new({name: 'name_example', lms: FlatApi::LmsName::CANVAS}) # LtiCredentialsCreation | 

begin
  # Create a new couple of LTI 1.x credentials
  result = api_instance.create_lti_credentials(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_lti_credentials: #{e}"
end
```

#### Using the create_lti_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LtiCredentials>, Integer, Hash)> create_lti_credentials_with_http_info(body)

```ruby
begin
  # Create a new couple of LTI 1.x credentials
  data, status_code, headers = api_instance.create_lti_credentials_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LtiCredentials>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_lti_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LtiCredentialsCreation**](LtiCredentialsCreation.md) |  |  |

### Return type

[**LtiCredentials**](LtiCredentials.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_invitation

> <OrganizationInvitation> create_organization_invitation(body)

Create a new invitation to join the organization

This method creates and sends invitation for teachers and admins.  Invitations can only be used by new Flat users or users who are not part of the organization yet.  If the email of the user is already associated to a user of your organization, the API will simply update the role of the existing user and won't send an invitation. In this case, the property `usedBy` will be directly filled with the uniquer identifier of the corresponding user. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
body = FlatApi::OrganizationInvitationCreation.new # OrganizationInvitationCreation | 

begin
  # Create a new invitation to join the organization
  result = api_instance.create_organization_invitation(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_invitation: #{e}"
end
```

#### Using the create_organization_invitation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrganizationInvitation>, Integer, Hash)> create_organization_invitation_with_http_info(body)

```ruby
begin
  # Create a new invitation to join the organization
  data, status_code, headers = api_instance.create_organization_invitation_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrganizationInvitation>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**OrganizationInvitationCreation**](OrganizationInvitationCreation.md) |  |  |

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_user

> <UserDetailsAdmin> create_organization_user(body)

Create a new user account

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
body = FlatApi::UserCreation.new({username: 'username_example', password: 'password_example'}) # UserCreation | 

begin
  # Create a new user account
  result = api_instance.create_organization_user(body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user: #{e}"
end
```

#### Using the create_organization_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserDetailsAdmin>, Integer, Hash)> create_organization_user_with_http_info(body)

```ruby
begin
  # Create a new user account
  data, status_code, headers = api_instance.create_organization_user_with_http_info(body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserDetailsAdmin>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**UserCreation**](UserCreation.md) |  |  |

### Return type

[**UserDetailsAdmin**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_user_access_token

> <ApiAccessToken> create_organization_user_access_token(user, organization_user_access_token_creation)

Create a delegated API access token for an organization user

This operation will create an API access token for a chosen organization user. This token will be valid for a limited time and can be used to access the API as the organization user. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
user = 'user_example' # String | Unique identifier of the Flat account 
organization_user_access_token_creation = FlatApi::OrganizationUserAccessTokenCreation.new({scopes: [FlatApi::AppScopes::ACCOUNT_PUBLIC_PROFILE]}) # OrganizationUserAccessTokenCreation | 

begin
  # Create a delegated API access token for an organization user
  result = api_instance.create_organization_user_access_token(user, organization_user_access_token_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user_access_token: #{e}"
end
```

#### Using the create_organization_user_access_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApiAccessToken>, Integer, Hash)> create_organization_user_access_token_with_http_info(user, organization_user_access_token_creation)

```ruby
begin
  # Create a delegated API access token for an organization user
  data, status_code, headers = api_instance.create_organization_user_access_token_with_http_info(user, organization_user_access_token_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApiAccessToken>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user_access_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of the Flat account  |  |
| **organization_user_access_token_creation** | [**OrganizationUserAccessTokenCreation**](OrganizationUserAccessTokenCreation.md) |  |  |

### Return type

[**ApiAccessToken**](ApiAccessToken.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_organization_user_signin_link

> <UserSigninLink> create_organization_user_signin_link(user, user_signin_link_creation)

Create a sign in link for an organization user

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
user = 'user_example' # String | Unique identifier of the Flat account 
user_signin_link_creation = FlatApi::UserSigninLinkCreation.new # UserSigninLinkCreation | 

begin
  # Create a sign in link for an organization user
  result = api_instance.create_organization_user_signin_link(user, user_signin_link_creation)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user_signin_link: #{e}"
end
```

#### Using the create_organization_user_signin_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserSigninLink>, Integer, Hash)> create_organization_user_signin_link_with_http_info(user, user_signin_link_creation)

```ruby
begin
  # Create a sign in link for an organization user
  data, status_code, headers = api_instance.create_organization_user_signin_link_with_http_info(user, user_signin_link_creation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserSigninLink>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->create_organization_user_signin_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of the Flat account  |  |
| **user_signin_link_creation** | [**UserSigninLinkCreation**](UserSigninLinkCreation.md) |  |  |

### Return type

[**UserSigninLink**](UserSigninLink.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_lti_credentials

> <Array<LtiCredentials>> list_lti_credentials

List LTI 1.x credentials

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

begin
  # List LTI 1.x credentials
  result = api_instance.list_lti_credentials
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_lti_credentials: #{e}"
end
```

#### Using the list_lti_credentials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LtiCredentials>>, Integer, Hash)> list_lti_credentials_with_http_info

```ruby
begin
  # List LTI 1.x credentials
  data, status_code, headers = api_instance.list_lti_credentials_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LtiCredentials>>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_lti_credentials_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;LtiCredentials&gt;**](LtiCredentials.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_invitations

> <Array<OrganizationInvitation>> list_organization_invitations(opts)

List the organization invitations

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
opts = {
  role: 'user', # String | Filter users by role
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example' # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  # List the organization invitations
  result = api_instance.list_organization_invitations(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_organization_invitations: #{e}"
end
```

#### Using the list_organization_invitations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OrganizationInvitation>>, Integer, Hash)> list_organization_invitations_with_http_info(opts)

```ruby
begin
  # List the organization invitations
  data, status_code, headers = api_instance.list_organization_invitations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OrganizationInvitation>>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_organization_invitations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | Filter users by role | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 50] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |

### Return type

[**Array&lt;OrganizationInvitation&gt;**](OrganizationInvitation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_organization_users

> <Array<UserDetailsAdmin>> list_organization_users(opts)

List the organization users

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
opts = {
  sort: ['firstname'], # Array<String> | The order to sort the user list
  direction: 'asc', # String | Sort direction
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example', # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  role: ['user'], # Array<String> | Filter users by role
  q: 'q_example', # String | The query to search
  group: ['inner_example'], # Array<String> | Filter users by group
  no_active_license: true, # Boolean | Filter users who don't have an active license
  license_expiration_date: ['inner_example'], # Array<String> | Filter users by license expiration date or `active` / `notActive`
  only_ids: true, # Boolean | Return only user ids
  limit: 56 # Integer | This is the maximum number of objects that may be returned
}

begin
  # List the organization users
  result = api_instance.list_organization_users(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_organization_users: #{e}"
end
```

#### Using the list_organization_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserDetailsAdmin>>, Integer, Hash)> list_organization_users_with_http_info(opts)

```ruby
begin
  # List the organization users
  data, status_code, headers = api_instance.list_organization_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserDetailsAdmin>>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->list_organization_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort** | [**Array&lt;String&gt;**](String.md) | The order to sort the user list | [optional] |
| **direction** | **String** | Sort direction | [optional] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **role** | [**Array&lt;String&gt;**](String.md) | Filter users by role | [optional] |
| **q** | **String** | The query to search | [optional] |
| **group** | [**Array&lt;String&gt;**](String.md) | Filter users by group | [optional] |
| **no_active_license** | **Boolean** | Filter users who don&#39;t have an active license | [optional] |
| **license_expiration_date** | [**Array&lt;String&gt;**](String.md) | Filter users by license expiration date or &#x60;active&#x60; / &#x60;notActive&#x60; | [optional] |
| **only_ids** | **Boolean** | Return only user ids | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 25] |

### Return type

[**Array&lt;UserDetailsAdmin&gt;**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_organization_invitation

> remove_organization_invitation(invitation)

Remove an organization invitation

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
invitation = 'invitation_example' # String | Unique identifier of the invitation

begin
  # Remove an organization invitation
  api_instance.remove_organization_invitation(invitation)
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->remove_organization_invitation: #{e}"
end
```

#### Using the remove_organization_invitation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_organization_invitation_with_http_info(invitation)

```ruby
begin
  # Remove an organization invitation
  data, status_code, headers = api_instance.remove_organization_invitation_with_http_info(invitation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->remove_organization_invitation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation** | **String** | Unique identifier of the invitation |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_organization_user

> remove_organization_user(user, opts)

Remove an account from Flat

This operation removes an account from Flat and its data, including: * The music scores created by this user (documents, history, comments, collaboration information) * Education related data (assignments and classroom information) 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
user = 'user_example' # String | Unique identifier of the Flat account 
opts = {
  convert_to_individual: true # Boolean | If `true`, the account will be only removed from the organization and converted into an individual account on our public website, https://flat.io. This operation will remove the education-related data from the account. Before realizing this operation, you need to be sure that the user is at least 13 years old and that this one has read and agreed to the Individual Terms of Services of Flat available on https://flat.io/legal. 
}

begin
  # Remove an account from Flat
  api_instance.remove_organization_user(user, opts)
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->remove_organization_user: #{e}"
end
```

#### Using the remove_organization_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_organization_user_with_http_info(user, opts)

```ruby
begin
  # Remove an account from Flat
  data, status_code, headers = api_instance.remove_organization_user_with_http_info(user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->remove_organization_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of the Flat account  |  |
| **convert_to_individual** | **Boolean** | If &#x60;true&#x60;, the account will be only removed from the organization and converted into an individual account on our public website, https://flat.io. This operation will remove the education-related data from the account. Before realizing this operation, you need to be sure that the user is at least 13 years old and that this one has read and agreed to the Individual Terms of Services of Flat available on https://flat.io/legal.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## revoke_lti_credentials

> revoke_lti_credentials(credentials)

Revoke LTI 1.x credentials

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
credentials = 'credentials_example' # String | Credentials unique identifier 

begin
  # Revoke LTI 1.x credentials
  api_instance.revoke_lti_credentials(credentials)
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->revoke_lti_credentials: #{e}"
end
```

#### Using the revoke_lti_credentials_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> revoke_lti_credentials_with_http_info(credentials)

```ruby
begin
  # Revoke LTI 1.x credentials
  data, status_code, headers = api_instance.revoke_lti_credentials_with_http_info(credentials)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->revoke_lti_credentials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credentials** | **String** | Credentials unique identifier  |  |

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organization_user

> <UserDetailsAdmin> update_organization_user(user, body)

Update account information

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new
user = 'user_example' # String | Unique identifier of the Flat account 
body = FlatApi::UserAdminUpdate.new # UserAdminUpdate | 

begin
  # Update account information
  result = api_instance.update_organization_user(user, body)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->update_organization_user: #{e}"
end
```

#### Using the update_organization_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserDetailsAdmin>, Integer, Hash)> update_organization_user_with_http_info(user, body)

```ruby
begin
  # Update account information
  data, status_code, headers = api_instance.update_organization_user_with_http_info(user, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserDetailsAdmin>
rescue FlatApi::ApiError => e
  puts "Error when calling OrganizationApi->update_organization_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Unique identifier of the Flat account  |  |
| **body** | [**UserAdminUpdate**](UserAdminUpdate.md) |  |  |

### Return type

[**UserDetailsAdmin**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

