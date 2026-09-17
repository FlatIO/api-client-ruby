# FlatApi::OmrJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the OMR job. |  |
| **status** | [**OmrJobStatus**](OmrJobStatus.md) |  |  |
| **output** | [**OmrJobOutput**](OmrJobOutput.md) |  | [default to &#39;library&#39;] |
| **interactive_steps** | [**Array&lt;OmrStepName&gt;**](OmrStepName.md) | Steps this job pauses at for client input, echoing the value set at creation. |  |
| **auto_rotate** | **Boolean** | Whether the job was created with &#x60;autoRotate&#x60;, echoing the value set at creation. | [optional] |
| **locales** | **Array&lt;String&gt;** | Locale hints (BCP 47) the job was created with, used for OCR and as the default main language at the &#x60;details&#x60; step.  | [optional] |
| **current_step** | [**OmrStepName**](OmrStepName.md) | The pending step when &#x60;status&#x60; is &#x60;awaitingInput&#x60;. Omitted otherwise. | [optional] |
| **pending_step** | [**OmrPendingStep**](OmrPendingStep.md) |  | [optional] |
| **estimated_credits** | **Integer** | Credits that will be or were charged at start (page-based), so a client can show a confirmation before charging. | [optional] |
| **progress** | [**OmrJobProgress**](OmrJobProgress.md) |  | [optional] |
| **original_file_metadata** | [**OmrJobFileMetadata**](OmrJobFileMetadata.md) |  | [optional] |
| **imported_metadata** | [**OmrImportedMetadata**](OmrImportedMetadata.md) |  | [optional] |
| **result** | [**OmrJobResult**](OmrJobResult.md) |  | [optional] |
| **retention** | [**OmrJobRetention**](OmrJobRetention.md) |  | [optional] |
| **error_code** | **String** | Stable, engine-agnostic failure code, present when &#x60;status&#x60; is &#x60;error&#x60;. Branch on this for custom handling, and render &#x60;errorMessage&#x60; for the user-facing text.  This is an open string: new codes may be added over time, so keep a generic fallback and never hardcode an exhaustive switch. Current values:  * &#x60;NO_MUSIC_DETECTED&#x60;: no musical content found (poor scan, rotated page, or tablature). * &#x60;CORRUPTED_FILE&#x60;: the input file is corrupted and could not be read. * &#x60;UNSUPPORTED_FORMAT&#x60;: the file format or notation is not supported yet. * &#x60;UNSUPPORTED_TABLATURE&#x60;: the file is guitar tablature, not supported yet. * &#x60;ENCRYPTED_PDF&#x60;: the PDF is password-protected. * &#x60;TOO_LARGE&#x60;: the document is too large or has an unusual shape to process. * &#x60;ENGINE_TIMEOUT&#x60;: recognition took longer than expected and was stopped. * &#x60;GENERIC&#x60;: unspecified failure.  | [optional] |
| **error_message** | **String** | Localized, user-facing error message, present when &#x60;status&#x60; is &#x60;error&#x60;. Rendered in the caller&#39;s locale and safe to display as-is. Pair with &#x60;errorCode&#x60; for branching.  | [optional] |
| **creation_date** | **Time** | When the job was created. | [optional] |
| **modification_date** | **Time** | When the job was last updated. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJob.new(
  id: null,
  status: null,
  output: null,
  interactive_steps: null,
  auto_rotate: null,
  locales: null,
  current_step: null,
  pending_step: null,
  estimated_credits: null,
  progress: null,
  original_file_metadata: null,
  imported_metadata: null,
  result: null,
  retention: null,
  error_code: null,
  error_message: null,
  creation_date: null,
  modification_date: null
)
```

