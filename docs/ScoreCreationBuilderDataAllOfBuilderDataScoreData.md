# FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **use_tab_staff** | **Boolean** | true if the TAB staff is displayed with fretted instruments | [optional] |
| **use_chord_grid** | **Boolean** | true if the chord grid must be displayed with fretted instruments | [optional] |
| **fifths** | **Float** | The key signature of the score (expressed between -7 and 7). Major C is used when the value is not provided. | [optional] |
| **nb_beats** | **Float** | The number of beats in the measure | [optional] |
| **beat_type** | **Float** | The duration of a beat in the measure | [optional] |
| **instruments** | [**Array&lt;ScoreCreationBuilderDataAllOfBuilderDataScoreDataInstruments&gt;**](ScoreCreationBuilderDataAllOfBuilderDataScoreDataInstruments.md) | The list of instruments to add to the score. See https://prod.flat-cdn.com/fixtures/instruments_en.json for the possible values for &#x60;group&#x60; and &#x60;instrument&#x60;.  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCreationBuilderDataAllOfBuilderDataScoreData.new(
  use_tab_staff: null,
  use_chord_grid: null,
  fifths: null,
  nb_beats: null,
  beat_type: null,
  instruments: null
)
```

