# FlatApi::OMRApi

All URIs are relative to *https://api.flat.io/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_omr_job_file**](OMRApi.md#add_omr_job_file) | **POST** /omr/jobs/{job}/files | Add a file to an OMR job |
| [**cancel_omr_job**](OMRApi.md#cancel_omr_job) | **POST** /omr/jobs/{job}/cancel | Cancel an OMR job |
| [**create_omr_job**](OMRApi.md#create_omr_job) | **POST** /omr/jobs | Create an OMR job |
| [**delete_omr_job**](OMRApi.md#delete_omr_job) | **DELETE** /omr/jobs/{job} | Delete an OMR job&#39;s data |
| [**get_omr_capabilities**](OMRApi.md#get_omr_capabilities) | **GET** /omr/capabilities | OMR capabilities and limits |
| [**get_omr_job**](OMRApi.md#get_omr_job) | **GET** /omr/jobs/{job} | Get an OMR job |
| [**get_omr_job_export**](OMRApi.md#get_omr_job_export) | **GET** /omr/jobs/{job}/exports/{format} | Download the finalized result |
| [**get_omr_job_file**](OMRApi.md#get_omr_job_file) | **GET** /omr/jobs/{job}/files/{index} | Get an input page image |
| [**list_billing_credits_history**](OMRApi.md#list_billing_credits_history) | **GET** /billing/credits/history | List credit history |
| [**list_omr_jobs**](OMRApi.md#list_omr_jobs) | **GET** /omr/jobs | List OMR jobs |
| [**start_omr_job**](OMRApi.md#start_omr_job) | **POST** /omr/jobs/{job}/start | Start an OMR job |
| [**submit_omr_job_step**](OMRApi.md#submit_omr_job_step) | **POST** /omr/jobs/{job}/steps/{step} | Submit an interactive step |


## add_omr_job_file

> <OmrJobFileUploadResult> add_omr_job_file(job, omr_job_file_upload, opts)

Add a file to an OMR job

Add one image or PDF to a draft job. Call once per file; files keep their upload order.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
omr_job_file_upload = FlatApi::OmrJobFileUpload.new({file: 'file_example'}) # OmrJobFileUpload | 
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Add a file to an OMR job
  result = api_instance.add_omr_job_file(job, omr_job_file_upload, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->add_omr_job_file: #{e}"
end
```

#### Using the add_omr_job_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJobFileUploadResult>, Integer, Hash)> add_omr_job_file_with_http_info(job, omr_job_file_upload, opts)

```ruby
begin
  # Add a file to an OMR job
  data, status_code, headers = api_instance.add_omr_job_file_with_http_info(job, omr_job_file_upload, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJobFileUploadResult>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->add_omr_job_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **omr_job_file_upload** | [**OmrJobFileUpload**](OmrJobFileUpload.md) |  |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJobFileUploadResult**](OmrJobFileUploadResult.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_omr_job

> <OmrJob> cancel_omr_job(job, opts)

Cancel an OMR job

Cancel a draft or in-flight job. Any charged credits are reversed.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Cancel an OMR job
  result = api_instance.cancel_omr_job(job, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->cancel_omr_job: #{e}"
end
```

#### Using the cancel_omr_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> cancel_omr_job_with_http_info(job, opts)

```ruby
begin
  # Cancel an OMR job
  data, status_code, headers = api_instance.cancel_omr_job_with_http_info(job, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->cancel_omr_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_omr_job

> <OmrJob> create_omr_job(omr_job_creation, opts)

Create an OMR job

Create an Optical Music Recognition job. There are two ways to call this endpoint:  * **Draft:** send the parameters without `files` to create an empty job, then add   files with `addOmrJobFile`, then run it with `startOmrJob`. Best for multiple   images or incremental mobile capture. * **One-shot:** include `files` and `autoStart: true` to import in a single request.   Best for a single PDF or a third-party integration.  Declare the interactive steps your client supports in `interactiveSteps`: the pipeline runs fully automatically and only pauses at the steps you list. Steps you do not list, including ones added in the future, are auto-resolved with server defaults, so older clients never break. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
omr_job_creation = FlatApi::OmrJobCreation.new # OmrJobCreation | 
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Create an OMR job
  result = api_instance.create_omr_job(omr_job_creation, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->create_omr_job: #{e}"
end
```

#### Using the create_omr_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> create_omr_job_with_http_info(omr_job_creation, opts)

```ruby
begin
  # Create an OMR job
  data, status_code, headers = api_instance.create_omr_job_with_http_info(omr_job_creation, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->create_omr_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **omr_job_creation** | [**OmrJobCreation**](OmrJobCreation.md) |  |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_omr_job

> <OmrJob> delete_omr_job(job, opts)

Delete an OMR job's data

Erase a job's uploaded files and recognition results now, instead of waiting for its retention deadline. Use this to serve a deletion request from your own end user.  Reaches the same end state as the scheduled cleanup: the files are gone, the job keeps the `status` it finished with, stays listable, and reports `retention.expiredDate`. Downloads then fail with `OMR_JOB_EXPIRED`.  Only available for jobs whose `output` is `musicxml`. Library imports are not covered by the retention policy and are rejected with `OMR_JOB_NOT_EXPIRABLE`; delete the resulting score instead.  The job must have finished (`done`, `error` or `canceled`). A draft or in-flight job is rejected with `OMR_JOB_IN_PROGRESS`: cancel it first, then delete. Deleting never cancels on your behalf, because cancellation reverses charged credits and that must not happen as a side effect of erasing data.  Calling this again on an already-erased job succeeds and changes nothing. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Delete an OMR job's data
  result = api_instance.delete_omr_job(job, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->delete_omr_job: #{e}"
end
```

#### Using the delete_omr_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> delete_omr_job_with_http_info(job, opts)

```ruby
begin
  # Delete an OMR job's data
  data, status_code, headers = api_instance.delete_omr_job_with_http_info(job, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->delete_omr_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_omr_capabilities

> <OmrCapabilities> get_omr_capabilities(opts)

OMR capabilities and limits

Advertises the supported steps, export formats, limits, cost-per-page, remaining credits and locales, so clients can feature-detect instead of hardcoding behavior.  Authentication is optional: called without an account, the limits are those of the free plan and `remainingCredits` is omitted. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # OMR capabilities and limits
  result = api_instance.get_omr_capabilities(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_capabilities: #{e}"
end
```

#### Using the get_omr_capabilities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrCapabilities>, Integer, Hash)> get_omr_capabilities_with_http_info(opts)

```ruby
begin
  # OMR capabilities and limits
  data, status_code, headers = api_instance.get_omr_capabilities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrCapabilities>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_capabilities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrCapabilities**](OmrCapabilities.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_omr_job

> <OmrJob> get_omr_job(job, opts)

Get an OMR job

Get the current state of an OMR job. This is the primary polling endpoint. Pass `wait` to long-poll until the state changes. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
opts = {
  wait: 56, # Integer | Long-poll up to this many seconds for a state change before returning.
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Get an OMR job
  result = api_instance.get_omr_job(job, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job: #{e}"
end
```

#### Using the get_omr_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> get_omr_job_with_http_info(job, opts)

```ruby
begin
  # Get an OMR job
  data, status_code, headers = api_instance.get_omr_job_with_http_info(job, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **wait** | **Integer** | Long-poll up to this many seconds for a state change before returning. | [optional] |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_omr_job_export

> File get_omr_job_export(job, format, opts)

Download the finalized result

Stream the finalized result in the requested format. Available once the job is `done`. For `output: musicxml` jobs this is the primary way to retrieve the result; no library score is created. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
format = 'musicxml' # String | Export format. New formats may be added over time; request what your client supports.  * `musicxml`: Uncompressed MusicXML (plain text `.xml`, `application/vnd.recordare.musicxml+xml`). * `mxl`: Compressed MusicXML (zip archive `.mxl`, `application/vnd.recordare.musicxml`), the same notation as `musicxml` but smaller to download. * `midi`: Standard MIDI file (`.mid`, `audio/midi`). * `thumbnail.png`: PNG preview of the first page (`image/png`). 
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Download the finalized result
  result = api_instance.get_omr_job_export(job, format, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job_export: #{e}"
end
```

#### Using the get_omr_job_export_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_omr_job_export_with_http_info(job, format, opts)

```ruby
begin
  # Download the finalized result
  data, status_code, headers = api_instance.get_omr_job_export_with_http_info(job, format, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job_export_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **format** | **String** | Export format. New formats may be added over time; request what your client supports.  * &#x60;musicxml&#x60;: Uncompressed MusicXML (plain text &#x60;.xml&#x60;, &#x60;application/vnd.recordare.musicxml+xml&#x60;). * &#x60;mxl&#x60;: Compressed MusicXML (zip archive &#x60;.mxl&#x60;, &#x60;application/vnd.recordare.musicxml&#x60;), the same notation as &#x60;musicxml&#x60; but smaller to download. * &#x60;midi&#x60;: Standard MIDI file (&#x60;.mid&#x60;, &#x60;audio/midi&#x60;). * &#x60;thumbnail.png&#x60;: PNG preview of the first page (&#x60;image/png&#x60;).  |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_omr_job_file

> File get_omr_job_file(job, index, opts)

Get an input page image

Fetch one of the job's input files (a page image or PDF) by index, for the review UI.  Once data retention has erased the job, this returns 409 `OMR_JOB_EXPIRED`. Read `retention.expiredDate` on the job to tell that case apart before requesting a file. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
index = 56 # Integer | 0-based index of the input file (page) to fetch.
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Get an input page image
  result = api_instance.get_omr_job_file(job, index, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job_file: #{e}"
end
```

#### Using the get_omr_job_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_omr_job_file_with_http_info(job, index, opts)

```ruby
begin
  # Get an input page image
  data, status_code, headers = api_instance.get_omr_job_file_with_http_info(job, index, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->get_omr_job_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **index** | **Integer** | 0-based index of the input file (page) to fetch. |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

**File**

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: image/jpeg, application/json


## list_billing_credits_history

> <Array<CreditTransaction>> list_billing_credits_history(opts)

List credit history

The credit ledger of the authenticated account, sorted by creation date descending (most recent entry first).  Every entry that moved the balance is listed: the deductions taken when an import runs, and the top-ups added by a credit pack.  Reversing a deduction does not add an entry, it flips the original one's `state` to `canceled`. Canceled entries stay in the list, so an import that was charged and then failed still shows its deduction rather than disappearing. Read `state` to tell the two apart, and sum only `active` entries. A refund can additionally add a positive entry when cancelling alone could not restore the full cost, for instance because the plan's allowance has since reset.  The current balance is not computed from this list: read it from `getOmrCapabilities`. 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
opts = {
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example' # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
}

begin
  # List credit history
  result = api_instance.list_billing_credits_history(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->list_billing_credits_history: #{e}"
end
```

#### Using the list_billing_credits_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<CreditTransaction>>, Integer, Hash)> list_billing_credits_history_with_http_info(opts)

```ruby
begin
  # List credit history
  data, status_code, headers = api_instance.list_billing_credits_history_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<CreditTransaction>>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->list_billing_credits_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 50] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |

### Return type

[**Array&lt;CreditTransaction&gt;**](CreditTransaction.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_omr_jobs

> <Array<OmrJob>> list_omr_jobs(opts)

List OMR jobs

List the caller's OMR jobs, for resuming work or cleaning up abandoned drafts.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
opts = {
  status: FlatApi::OmrJobStatus::DRAFT, # OmrJobStatus | Filter jobs by status
  expired: true, # Boolean | Filter by data-retention state, independently of `status`.  * `true`: only jobs whose files have been erased. * `false`: only jobs that still hold their files.  Omit to get both. A job keeps the `status` it finished with after erasure, so this is the only way to tell the two apart. 
  limit: 56, # Integer | This is the maximum number of objects that may be returned
  _next: '_next_example', # String | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  previous: 'previous_example', # String | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the `Link` header when requesting the API. These URLs will contain a `next` and `previous` cursor based on the available data. 
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # List OMR jobs
  result = api_instance.list_omr_jobs(opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->list_omr_jobs: #{e}"
end
```

#### Using the list_omr_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OmrJob>>, Integer, Hash)> list_omr_jobs_with_http_info(opts)

```ruby
begin
  # List OMR jobs
  data, status_code, headers = api_instance.list_omr_jobs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OmrJob>>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->list_omr_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**OmrJobStatus**](.md) | Filter jobs by status | [optional] |
| **expired** | **Boolean** | Filter by data-retention state, independently of &#x60;status&#x60;.  * &#x60;true&#x60;: only jobs whose files have been erased. * &#x60;false&#x60;: only jobs that still hold their files.  Omit to get both. A job keeps the &#x60;status&#x60; it finished with after erasure, so this is the only way to tell the two apart.  | [optional] |
| **limit** | **Integer** | This is the maximum number of objects that may be returned | [optional][default to 50] |
| **_next** | **String** | An opaque string cursor to fetch the next page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **previous** | **String** | An opaque string cursor to fetch the previous page of data. The paginated API URLs are returned in the &#x60;Link&#x60; header when requesting the API. These URLs will contain a &#x60;next&#x60; and &#x60;previous&#x60; cursor based on the available data.  | [optional] |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**Array&lt;OmrJob&gt;**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_omr_job

> <OmrJob> start_omr_job(job, opts)

Start an OMR job

Validate the attached files, run the permission, quota and credit checks, then queue the job for processing.

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Start an OMR job
  result = api_instance.start_omr_job(job, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->start_omr_job: #{e}"
end
```

#### Using the start_omr_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> start_omr_job_with_http_info(job, opts)

```ruby
begin
  # Start an OMR job
  data, status_code, headers = api_instance.start_omr_job_with_http_info(job, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->start_omr_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_omr_job_step

> <OmrJob> submit_omr_job_step(job, step, body, opts)

Submit an interactive step

Resolve the step the job is currently awaiting and resume the pipeline. The request body shape depends on `step` (a `oneOf` discriminated by the step name). 

### Examples

```ruby
require 'time'
require 'flat_api'
# setup authorization
FlatApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = FlatApi::OMRApi.new
job = 'job_example' # String | Unique identifier of the OMR job
step = FlatApi::OmrStepName::DETAILS # OmrStepName | The pending step being submitted
body = 3.56 # OmrDetailsSubmission | 
opts = {
  x_flat_locale: 'fr' # String | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to `en`).  Supported normalized locales: `da`, `de`, `en`, `en-GB`, `es`, `fi`, `fil`, `fr`, `fr-CA`, `hi`, `id`, `it`, `ja`, `ko`, `ms`, `nl`, `nb`, `pl`, `pt`, `pt-BR`, `ro`, `ru`, `sv`, `tr`, `zh-Hans`, `zh-HK`, `zh-TW`.  Precedence (highest first): this `X-Flat-Locale` header, the authenticated user's account locale, the `Accept-Language` header, then `en`. 
}

begin
  # Submit an interactive step
  result = api_instance.submit_omr_job_step(job, step, body, opts)
  p result
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->submit_omr_job_step: #{e}"
end
```

#### Using the submit_omr_job_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OmrJob>, Integer, Hash)> submit_omr_job_step_with_http_info(job, step, body, opts)

```ruby
begin
  # Submit an interactive step
  data, status_code, headers = api_instance.submit_omr_job_step_with_http_info(job, step, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OmrJob>
rescue FlatApi::ApiError => e
  puts "Error when calling OMRApi->submit_omr_job_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job** | **String** | Unique identifier of the OMR job |  |
| **step** | [**OmrStepName**](.md) | The pending step being submitted |  |
| **body** | **OmrDetailsSubmission** |  |  |
| **x_flat_locale** | **String** | Preferred locale for localized content in the response (translated error messages, emails, etc.).  Accepts any IETF language tag. The API best-matches the value to a supported locale and never rejects an unknown one (it falls back to the closest match, then to &#x60;en&#x60;).  Supported normalized locales: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nl&#x60;, &#x60;nb&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;.  Precedence (highest first): this &#x60;X-Flat-Locale&#x60; header, the authenticated user&#39;s account locale, the &#x60;Accept-Language&#x60; header, then &#x60;en&#x60;.  | [optional] |

### Return type

[**OmrJob**](OmrJob.md)

### Authorization

[OAuth2](../README.md#OAuth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

