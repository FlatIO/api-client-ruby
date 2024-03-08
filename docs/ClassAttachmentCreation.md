# FlatApi::ClassAttachmentCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the attachment posted: * &#x60;rich&#x60;, &#x60;photo&#x60;, &#x60;video&#x60; are attachment types that are automatically resolved from a &#x60;link&#x60; attachment. * A &#x60;flat&#x60; attachment is a score document where the unique identifier will be specified in the &#x60;score&#x60; property. Its sharing mode will be provided in the &#x60;sharingMode&#x60; property.  | [optional] |
| **score** | **String** | A unique Flat score identifier. The user creating the assignment must at least have read access to the document. If the user has admin rights, new group permissions will be automatically added for the teachers and students of the class.  | [optional] |
| **worksheet** | **String** | An unique worksheet identifier | [optional] |
| **sharing_mode** | [**MediaScoreSharingMode**](MediaScoreSharingMode.md) |  | [optional][default to &#39;read&#39;] |
| **lock_score_template** | **Boolean** | To be used with a score attached in &#x60;sharingMode&#x60; &#x60;copy&#x60; (score used as template). If true, students won&#39;t be able to change the original notes of the template. | [optional] |
| **url** | **String** | The URL of the attachment. | [optional] |
| **google_drive_file_id** | **String** | The ID of the Google Drive File | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassAttachmentCreation.new(
  type: null,
  score: null,
  worksheet: null,
  sharing_mode: null,
  lock_score_template: null,
  url: null,
  google_drive_file_id: null
)
```

