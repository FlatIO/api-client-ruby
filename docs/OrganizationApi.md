# FlatApi::OrganizationApi

All URIs are relative to *https://api.flat.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_lti_credentials**](OrganizationApi.md#create_lti_credentials) | **POST** /organizations/lti/credentials | Create a new couple of LTI 1.x credentials
[**create_organization_invitation**](OrganizationApi.md#create_organization_invitation) | **POST** /organizations/invitations | Create a new invitation to join the organization
[**create_organization_user**](OrganizationApi.md#create_organization_user) | **POST** /organizations/users | Create a new user account
[**list_lti_credentials**](OrganizationApi.md#list_lti_credentials) | **GET** /organizations/lti/credentials | List LTI 1.x credentials
[**list_organization_invitations**](OrganizationApi.md#list_organization_invitations) | **GET** /organizations/invitations | List the organization invitations
[**list_organization_users**](OrganizationApi.md#list_organization_users) | **GET** /organizations/users | List the organization users
[**remove_organization_invitation**](OrganizationApi.md#remove_organization_invitation) | **DELETE** /organizations/invitations/{invitation} | Remove an organization invitation
[**remove_organization_user**](OrganizationApi.md#remove_organization_user) | **DELETE** /organizations/users/{user} | Remove an account from Flat
[**revoke_lti_credentials**](OrganizationApi.md#revoke_lti_credentials) | **DELETE** /organizations/lti/credentials/{credentials} | Revoke LTI 1.x credentials
[**update_organization_user**](OrganizationApi.md#update_organization_user) | **PUT** /organizations/users/{user} | Update account information


# **create_lti_credentials**
> LtiCredentials create_lti_credentials(body)

Create a new couple of LTI 1.x credentials

Flat for Education is a Certified LTI Provider. You can use these API methods to automate the creation of LTI credentials. You can read more about our LTI implementation, supported components and LTI Endpoints in our [Developer Documentation](https://flat.io/developers/docs/lti/). 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

body = FlatApi::LtiCredentialsCreation.new # LtiCredentialsCreation | 


begin
  #Create a new couple of LTI 1.x credentials
  result = api_instance.create_lti_credentials(body)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->create_lti_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LtiCredentialsCreation**](LtiCredentialsCreation.md)|  | 

### Return type

[**LtiCredentials**](LtiCredentials.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_organization_invitation**
> OrganizationInvitation create_organization_invitation(opts)

Create a new invitation to join the organization

This method creates and sends invitation for teachers and admins.  Invitations can only be used by new Flat users or users who are not part of the organization yet.  If the email of the user is already associated to a user of your organization, the API will simply update the role of the existing user and won't send an invitation. In this case, the property `usedBy` will be directly filled with the uniquer identifier of the corresponding user. 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

opts = { 
  body: FlatApi::OrganizationInvitationCreation.new # OrganizationInvitationCreation | 
}

begin
  #Create a new invitation to join the organization
  result = api_instance.create_organization_invitation(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->create_organization_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrganizationInvitationCreation**](OrganizationInvitationCreation.md)|  | [optional] 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_organization_user**
> UserDetailsAdmin create_organization_user(opts)

Create a new user account

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

opts = { 
  body: FlatApi::UserCreation.new # UserCreation | 
}

begin
  #Create a new user account
  result = api_instance.create_organization_user(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->create_organization_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCreation**](UserCreation.md)|  | [optional] 

### Return type

[**UserDetailsAdmin**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_lti_credentials**
> Array&lt;LtiCredentials&gt; list_lti_credentials

List LTI 1.x credentials

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

begin
  #List LTI 1.x credentials
  result = api_instance.list_lti_credentials
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->list_lti_credentials: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LtiCredentials&gt;**](LtiCredentials.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_organization_invitations**
> Array&lt;OrganizationInvitation&gt; list_organization_invitations(opts)

List the organization invitations

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

opts = { 
  role: "role_example", # String | Filter users by role
  limit: 50, # Integer | This is the maximum number of objects that may be returned
  _next: "_next_example", # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: "previous_example" # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  #List the organization invitations
  result = api_instance.list_organization_invitations(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->list_organization_invitations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| Filter users by role | [optional] 
 **limit** | **Integer**| This is the maximum number of objects that may be returned | [optional] [default to 50]
 **_next** | **String**| An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] 
 **previous** | **String**| An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] 

### Return type

[**Array&lt;OrganizationInvitation&gt;**](OrganizationInvitation.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_organization_users**
> Array&lt;UserDetailsAdmin&gt; list_organization_users(opts)

List the organization users

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

opts = { 
  role: "role_example", # String | Filter users by role
  limit: 50, # Integer | This is the maximum number of objects that may be returned
  _next: "_next_example", # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: "previous_example" # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  #List the organization users
  result = api_instance.list_organization_users(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->list_organization_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **String**| Filter users by role | [optional] 
 **limit** | **Integer**| This is the maximum number of objects that may be returned | [optional] [default to 50]
 **_next** | **String**| An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] 
 **previous** | **String**| An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] 

### Return type

[**Array&lt;UserDetailsAdmin&gt;**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_organization_invitation**
> remove_organization_invitation(invitation)

Remove an organization invitation

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

invitation = "invitation_example" # String | Unique identifier of the invitation


begin
  #Remove an organization invitation
  api_instance.remove_organization_invitation(invitation)
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->remove_organization_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation** | **String**| Unique identifier of the invitation | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_organization_user**
> remove_organization_user(user, opts)

Remove an account from Flat

This operation removes an account from Flat and its data, including: * The music scores created by this user (documents, history, comments, collaboration information) * Education related data (assignments and classroom information) 

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

user = "user_example" # String | Unique identifier of the Flat account 

opts = { 
  convert_to_individual: true # BOOLEAN | If `true`, the account will be only removed from the organization and converted into an individual account on our public website, https://flat.io. This operation will remove the education-related data from the account. Before realizing this operation, you need to be sure that the user is at least 13 years old and that this one has read and agreed to the Individual Terms of Services of Flat available on https://flat.io/legal. 
}

begin
  #Remove an account from Flat
  api_instance.remove_organization_user(user, opts)
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->remove_organization_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Unique identifier of the Flat account  | 
 **convert_to_individual** | **BOOLEAN**| If &#x60;true&#x60;, the account will be only removed from the organization and converted into an individual account on our public website, https://flat.io. This operation will remove the education-related data from the account. Before realizing this operation, you need to be sure that the user is at least 13 years old and that this one has read and agreed to the Individual Terms of Services of Flat available on https://flat.io/legal.  | [optional] 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **revoke_lti_credentials**
> revoke_lti_credentials(credentials)

Revoke LTI 1.x credentials

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

credentials = "credentials_example" # String | Credentials unique identifier 


begin
  #Revoke LTI 1.x credentials
  api_instance.revoke_lti_credentials(credentials)
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->revoke_lti_credentials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentials** | **String**| Credentials unique identifier  | 

### Return type

nil (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_organization_user**
> UserDetailsAdmin update_organization_user(userbody)

Update account information

### Example
```ruby
# load the gem
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OrganizationApi.new

user = "user_example" # String | Unique identifier of the Flat account 

body = FlatApi::UserAdminUpdate.new # UserAdminUpdate | 


begin
  #Update account information
  result = api_instance.update_organization_user(userbody)
  p result
rescue FlatApi::ApiError => e
  puts "Exception when calling OrganizationApi->update_organization_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Unique identifier of the Flat account  | 
 **body** | [**UserAdminUpdate**](UserAdminUpdate.md)|  | 

### Return type

[**UserDetailsAdmin**](UserDetailsAdmin.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



