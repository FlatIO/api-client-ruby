# FlatApi::UserCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | Username of the new account |  |
| **firstname** | **String** | First name of the user | [optional] |
| **lastname** | **String** | Last name of the user | [optional] |
| **email** | **String** | Email of the new account | [optional] |
| **password** | **String** | Password of the new account |  |
| **locale** | [**FlatLocales**](FlatLocales.md) |  | [optional][default to &#39;en&#39;] |
| **role** | **String** | Role of the new account | [optional][default to &#39;user&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserCreation.new(
  username: null,
  firstname: null,
  lastname: null,
  email: null,
  password: null,
  locale: null,
  role: null
)
```

