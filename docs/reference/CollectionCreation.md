# FlatApi::CollectionCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the collection | [optional] |
| **privacy** | [**CollectionPrivacy**](CollectionPrivacy.md) |  | [optional][default to &#39;private&#39;] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::CollectionCreation.new(
  title: null,
  privacy: null
)
```

