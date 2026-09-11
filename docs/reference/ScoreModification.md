# FlatApi::ScoreModification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the score | [optional] |
| **subtitle** | **String** | The subtitle of the score | [optional] |
| **composer** | **String** | The composer of the score | [optional] |
| **lyricist** | **String** | The lyricist of the score | [optional] |
| **arranger** | **String** | The arranger of the score | [optional] |
| **privacy** | [**ScorePrivacy**](ScorePrivacy.md) |  | [optional][default to &#39;private&#39;] |
| **sharing_key** | **String** | When using the &#x60;privacy&#x60; mode &#x60;privateLink&#x60;, this property can be used to set a custom sharing key, otherwise a new key will be generated. | [optional] |
| **description** | **String** | Description of the creation | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags describing the score | [optional] |
| **creation_type** | [**ScoreCreationType**](ScoreCreationType.md) |  | [optional] |
| **license** | [**ScoreLicense**](ScoreLicense.md) |  | [optional] |
| **license_text** | **String** | The rights info written on the score | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreModification.new(
  title: null,
  subtitle: null,
  composer: null,
  lyricist: null,
  arranger: null,
  privacy: null,
  sharing_key: null,
  description: null,
  tags: null,
  creation_type: null,
  license: null,
  license_text: null
)
```

