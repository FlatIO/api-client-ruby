# FlatApi::UserSigninLinkCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **destination_path** | **String** | Path to redirect to after signin | [optional][default to &#39;/&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserSigninLinkCreation.new(
  destination_path: null
)
```

