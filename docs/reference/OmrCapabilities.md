# FlatApi::OmrCapabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **steps** | [**Array&lt;OmrStepName&gt;**](OmrStepName.md) | Interactive steps this server supports. |  |
| **formats** | **Array&lt;String&gt;** | Export formats available via &#x60;getOmrJobExport&#x60;. |  |
| **outputs** | [**Array&lt;OmrJobOutput&gt;**](OmrJobOutput.md) | Output destinations the account can use when creating a job. |  |
| **max_files** | **Integer** | Maximum number of input files that can be added to a single job. |  |
| **max_pages** | **Integer** | Maximum number of pages allowed across all input files of a single job. |  |
| **max_parallel_jobs** | **Integer** | Maximum number of OMR jobs that can run in parallel for this account. |  |
| **max_file_size** | **Integer** | Maximum size of a single file, in bytes. |  |
| **accepted_mime_types** | **Array&lt;String&gt;** | MIME types accepted for input files: PDF, plus the raster image formats.  Drive the file picker from this list rather than hardcoding it, so newly supported formats need no client release. A file is identified by its content, so its declared type and its extension do not have to match.  A multi-page input counts as several pages against &#x60;maxPages&#x60; and is charged accordingly. That covers PDFs and, among the image formats, multi-page TIFF and animated GIF/WebP.  |  |
| **accepted_extensions** | **Array&lt;String&gt;** | Filename extensions the accepted types appear under, for building a file picker.  Use these alongside &#x60;acceptedMimeTypes&#x60; in an &#x60;accept&#x60; attribute: browsers and native file dialogs filter unreliably on some of the image types, so a valid file can be greyed out when only its MIME type is offered.  Longer than &#x60;acceptedMimeTypes&#x60;, because one type arrives under several extensions (&#x60;.jpg&#x60; and &#x60;.jpeg&#x60;, &#x60;.tif&#x60; and &#x60;.tiff&#x60;, &#x60;.heic&#x60; and &#x60;.heif&#x60;).  Picker metadata only. A file is identified by its content, so its extension never decides whether an upload is accepted.  |  |
| **cost_per_page** | **Integer** | Credits charged per page. | [optional] |
| **remaining_credits** | **Integer** | OMR credits remaining for the account. | [optional] |
| **retention_days** | **Integer** | How many days a &#x60;musicxml&#x60; job&#39;s uploaded files and results are kept before erasure.  Reflects the account&#39;s own period when one has been set, otherwise the platform default. Read-only: contact support to change it. Jobs with &#x60;output: library&#x60; are not covered by the retention policy and are unaffected by this value.  | [optional] |
| **locales** | **Array&lt;String&gt;** | Locales selectable for OCR, as BCP 47 codes sorted alphabetically.  These are the locales the recognition pipeline can actually read, which is neither the list of Flat interface locales nor a fixed set: new languages are added over time. Clients should default to the user&#39;s own locale when it appears here.  |  |
| **locales_details** | [**Array&lt;OmrLocaleDetails&gt;**](OmrLocaleDetails.md) | The same locales as &#x60;locales&#x60;, each with its English display name, sorted alphabetically by &#x60;name&#x60; and ready to bind to a language picker.  Prefer this over &#x60;locales&#x60; when rendering a selector: it saves clients from shipping their own code-to-label table.  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrCapabilities.new(
  steps: null,
  formats: null,
  outputs: null,
  max_files: null,
  max_pages: null,
  max_parallel_jobs: null,
  max_file_size: null,
  accepted_mime_types: null,
  accepted_extensions: null,
  cost_per_page: null,
  remaining_credits: null,
  retention_days: null,
  locales: null,
  locales_details: null
)
```

