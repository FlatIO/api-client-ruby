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
  consumer_secret: null
)
```

