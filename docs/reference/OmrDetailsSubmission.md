# FlatApi::OmrDetailsSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **step** | **String** | Discriminator for &#x60;OmrStepSubmission&#x60;; always &#x60;details&#x60; for this submission. |  |
| **title** | **String** | Override the detected work title. | [optional] |
| **main_language** | **String** | Override the main language (BCP 47) used for lyric and text reading on resume. Defaults to the job locale (&#x60;locales&#x60;); set this to correct it on the review screen.  | [optional] |
| **instruments** | [**Array&lt;OmrInstrumentOverride&gt;**](OmrInstrumentOverride.md) | Per-part overrides, each matched to a detected part by &#x60;index&#x60;. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrDetailsSubmission.new(
  step: null,
  title: null,
  main_language: null,
  instruments: null
)
```

