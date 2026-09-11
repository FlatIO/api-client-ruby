# FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreDataInstruments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group** | **String** | The  of the instrument group (e.g. &#x60;keyboards&#x60;, &#x60;brass&#x60;) |  |
| **instrument** | **String** | The identifier of the instrument (e.g. &#x60;piano&#x60;, &#x60;trumpet&#x60;) |  |
| **long_name** | **String** | The full name of the instrument | [optional] |
| **short_name** | **String** | The abbreviation of the name of the instrument | [optional] |
| **has_quarter_tone** | **Boolean** | True if the part can use quarter tone (prevent the part to have a TAB/chord grid) | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreDataInstruments.new(
  group: null,
  instrument: null,
  long_name: null,
  short_name: null,
  has_quarter_tone: null
)
```

