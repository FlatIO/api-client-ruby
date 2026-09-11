# FlatApi::OmrDetectedInstrument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | 0-based position of the part in the score. |  |
| **part_name** | **String** | Verbatim part name read from the score. | [optional] |
| **instrument_id** | **String** | Flat instrument ID in dotted &#x60;&lt;group&gt;.&lt;instrument&gt;&#x60; form, for example &#x60;brass.horn&#x60; or &#x60;vocals.voice-oohs&#x60;. See the [Instrument IDs reference](https://flat.io/developers/docs/api/instruments). Always the canonical (non-premium) ID. | [optional] |
| **instrument_name** | **String** | Localized display name, resolved server-side so the client needs no instruments dictionary. | [optional] |
| **midi_program** | **Integer** | General MIDI program number. | [optional] |
| **transpose_key** | **String** | Transposition or written key shown in the UI, for example &#x60;F&#x60; for Horn in F. | [optional] |
| **resolved_confidence** | **String** | Server confidence in the resolved instrument match. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrDetectedInstrument.new(
  index: null,
  part_name: null,
  instrument_id: null,
  instrument_name: null,
  midi_program: null,
  transpose_key: null,
  resolved_confidence: null
)
```

