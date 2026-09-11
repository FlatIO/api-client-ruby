# FlatApi::OmrDetailsStepData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step** | **String** | Discriminator for &#x60;OmrPendingStep.data&#x60;; always &#x60;details&#x60; for this payload. |  |
| **title** | **String** | OCR-detected work title. | [optional] |
| **instruments** | [**Array&lt;OmrDetectedInstrument&gt;**](OmrDetectedInstrument.md) |  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrDetailsStepData.new(
  step: null,
  title: null,
  instruments: null
)
```

