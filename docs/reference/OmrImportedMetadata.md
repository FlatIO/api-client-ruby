# FlatApi::OmrImportedMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **instruments** | **Array&lt;String&gt;** | Instrument IDs of the assembled parts. | [optional] |
| **number_measures** | **Integer** | Number of measures in the recognized score. | [optional] |
| **main_tempo_qpm** | **Float** | Main tempo, in quarter notes per minute. | [optional] |
| **main_key_signature** | **Integer** | Main key signature as a fifths count (negative for flats, positive for sharps, 0 for C major / A minor). | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrImportedMetadata.new(
  instruments: null,
  number_measures: null,
  main_tempo_qpm: null,
  main_key_signature: null
)
```

