# FlatApi::ScoreSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the score |  |
| **sharing_key** | **String** | The private sharing key of the score (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] |
| **title** | **String** | The title of the score |  |
| **privacy** | [**ScorePrivacy**](ScorePrivacy.md) |  | [default to &#39;private&#39;] |
| **user** | [**UserPublic**](UserPublic.md) |  |  |
| **html_url** | **String** | The url where the score can be viewed in a web browser |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreSummary.new(
  id: null,
  sharing_key: null,
  title: null,
  privacy: null,
  user: null,
  html_url: null
)
```

