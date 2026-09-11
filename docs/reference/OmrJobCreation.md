# FlatApi::OmrJobCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **output** | [**OmrJobOutput**](OmrJobOutput.md) |  | [optional][default to &#39;library&#39;] |
| **interactive_steps** | [**Array&lt;OmrStepName&gt;**](OmrStepName.md) | Steps at which the pipeline should pause for this client. Omit or send &#x60;[]&#x60; for a fully automatic import. The server only pauses at the steps listed here; declare only steps your client can actually render.  | [optional] |
| **locales** | **Array&lt;String&gt;** | Locale hints (BCP 47) to improve text and lyric detection, for example &#x60;[\&quot;ja\&quot;, \&quot;en\&quot;]&#x60;. The first entry drives the OCR reader. This is the input hint; the detected main language is confirmed later at the &#x60;details&#x60; step.  | [optional] |
| **collection** | **String** | Target collection ID. Only used when &#x60;output&#x60; is &#x60;library&#x60;. | [optional] |
| **idempotency_key** | **String** | Optional client-supplied key. A retry with the same key returns the existing job instead of creating a duplicate, for safe retries on flaky networks.  | [optional] |
| **files** | [**Array&lt;OmrJobInputFile&gt;**](OmrJobInputFile.md) | Optional inline inputs for a one-shot import. For multi-image or mobile capture, omit this and use &#x60;addOmrJobFile&#x60;. | [optional] |
| **auto_start** | **Boolean** | Start processing immediately. Only valid when &#x60;files&#x60; is provided. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobCreation.new(
  output: null,
  interactive_steps: null,
  locales: null,
  collection: null,
  idempotency_key: null,
  files: null,
  auto_start: null
)
```

