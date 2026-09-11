# FlatApi::LtiCredentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of this couple of credentials | [optional] |
| **name** | **String** | Name of the couple of credentials | [optional] |
| **lms** | [**LmsName**](LmsName.md) |  | [optional] |
| **organization** | **String** | The unique identifier of the Organization associated to these credentials | [optional] |
| **creator** | **String** | Unique identifier of the user who created these credentials | [optional] |
| **creation_date** | **Time** | The creation date of thse credentials | [optional] |
| **last_usage** | **Time** | The last time these credentials were used | [optional] |
| **consumer_key** | **String** | OAuth 1 Consumer Key | [optional] |
| **consumer_secret** | **String** | OAuth 1 Consumer Secret | [optional] |
| **enable_email_matching** | **Boolean** | Enable email-based user matching during LTI authentication.  When true (default): If a user with the same email exists in the organization, they will be matched and logged in instead of creating a new account.  When false: Email matching is disabled. Only LTI ID matching is used, which means multiple LTI users can share the same email address and have separate Flat accounts. This is useful for cases like siblings sharing a parent email in the LMS.  | [optional][default to true] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::LtiCredentials.new(
  id: null,
  name: null,
  lms: null,
  organization: null,
  creator: null,
  creation_date: null,
  last_usage: null,
  consumer_key: null,
  consumer_secret: null,
  enable_email_matching: null
)
```

