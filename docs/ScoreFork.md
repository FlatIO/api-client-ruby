# FlatApi::ScoreFork

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection** | **String** | Unique identifier of a collection where the score will be copied. If no collection identifier is provided, the score will be stored in the &#x60;root&#x60; directory. If null is provided, the score won&#39;t be added to any collections  | [optional][default to &#39;root&#39;] |
| **google_drive_disabled** | **Boolean** | If set to &#x60;true&#x60;, the API won&#39;t create the score on Google Drive  | [optional][default to false] |
| **keep_original_title** | **Boolean** | Option to keep the original title of the score (i.e. don&#39;t prepend it with \&quot;Copy of \&quot;, or add the student name in assignment usage).  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreFork.new(
  collection: null,
  google_drive_disabled: null,
  keep_original_title: null
)
```

