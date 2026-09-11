# FlatApi::OmrJobRetention

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_date** | **Time** | When this job&#39;s uploaded files and recognition results become eligible for erasure. Fixed when the job is created: changing the account&#39;s retention period does not move the deadline of jobs that already exist.  |  |
| **expired_date** | **Time** | When the job&#39;s stored files were actually erased. Present only once that happened.  An expired job keeps the &#x60;status&#x60; it finished with and stays listable, but its &#x60;result&#x60; is no longer served and downloads fail with &#x60;OMR_JOB_EXPIRED&#x60;.  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobRetention.new(
  expiry_date: null,
  expired_date: null
)
```

