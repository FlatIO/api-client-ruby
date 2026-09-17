# FlatApi::OmrJobCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **output** | [**OmrJobOutput**](OmrJobOutput.md) |  | [optional][default to &#39;library&#39;] |
| **interactive_steps** | [**Array&lt;OmrStepName&gt;**](OmrStepName.md) | Steps at which the pipeline should pause for this client. Omit or send &#x60;[]&#x60; for a fully automatic import. The server only pauses at the steps listed here; declare only steps your client can actually render.  | [optional] |
| **auto_rotate** | **Boolean** | Let the server detect and correct pages uploaded sideways or upside down (90/180/270°) before recognition. Off by default: pages are recognized in the orientation they are uploaded in, which is the right choice when your client lets the user rotate pages before upload. Enable it when it does not, for example a server-to-server integration importing scans as they come. Small tilt correction (a few degrees) always runs.  | [optional][default to false] |
| **locales** | **Array&lt;String&gt;** | Locale hints (BCP 47) to improve text and lyric detection, for example &#x60;[\&quot;ja\&quot;, \&quot;en\&quot;]&#x60;. The first entry is the primary reading language. This is the input hint; the main language can be confirmed or corrected at the &#x60;details&#x60; step.  | [optional] |
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
  auto_rotate: null,
  locales: null,
  collection: null,
  idempotency_key: null,
  files: null,
  auto_start: null
)
```

