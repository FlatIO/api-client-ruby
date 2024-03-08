# FlatApi::MediaAttachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the assignment resolved: * &#x60;rich&#x60;, &#x60;photo&#x60;, &#x60;video&#x60; are automatically resolved as &#x60;link&#x60; * A &#x60;flat&#x60; attachment is a score document where the unique identifier will be specified in the &#x60;score&#x60; property. Its sharing mode will be provided in the &#x60;sharingMode&#x60; property.  |  |
| **score** | **String** | An unique Flat score identifier | [optional] |
| **revision** | **String** | An unique revision identifier of a score | [optional] |
| **worksheet** | **String** | An unique worksheet identifier | [optional] |
| **dedicated** | **Boolean** | True if the resource is dedicated for the assignment (for scores and worksheets), meaning on the user-side this one is stored in the assignment | [optional] |
| **track** | **String** | A unique track identifier | [optional] |
| **sharing_mode** | [**MediaScoreSharingMode**](MediaScoreSharingMode.md) |  | [optional][default to &#39;read&#39;] |
| **lock_score_template** | **Boolean** | To be used with a score attached in &#x60;sharingMode&#x60; &#x60;copy&#x60; (score used as template). If true, students won&#39;t be able to change the original notes of the template. | [optional] |
| **title** | **String** | The resolved title of the attachment | [optional] |
| **description** | **String** | The resolved description of the attachment | [optional] |
| **html** | **String** | If the attachment type is &#x60;rich&#x60; or &#x60;video&#x60;, the HTML code of the media to display  | [optional] |
| **html_width** | **String** | If the &#x60;html&#x60; is available, the width of the widget | [optional] |
| **html_height** | **String** | If the &#x60;html&#x60; is available, the height of the widget | [optional] |
| **url** | **String** | The url of the attachment | [optional] |
| **thumbnail_url** | **String** | If the attachment type is &#x60;rich&#x60;, &#x60;video&#x60;, &#x60;photo&#x60; or &#x60;link&#x60;, a displayable thumbnail for this attachment  | [optional] |
| **thumbnail_width** | **Integer** | If the &#x60;thumbnailUrl&#x60; is available, the width of the thumbnail  | [optional] |
| **thumbnail_height** | **Integer** | If the &#x60;thumbnailUrl&#x60; is available, the width of the thumbnail  | [optional] |
| **author_name** | **String** | The resolved author name of the attachment | [optional] |
| **author_url** | **String** | The resolved author url of the attachment | [optional] |
| **icon_url** | **String** | The URL of the icon | [optional] |
| **mime_type** | **String** | The mine type of the file | [optional] |
| **google_drive_file_id** | **String** | The ID of the Google Drive File | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::MediaAttachment.new(
  type: null,
  score: null,
  revision: null,
  worksheet: null,
  dedicated: null,
  track: null,
  sharing_mode: null,
  lock_score_template: null,
  title: null,
  description: null,
  html: null,
  html_width: null,
  html_height: null,
  url: null,
  thumbnail_url: null,
  thumbnail_width: null,
  thumbnail_height: null,
  author_name: null,
  author_url: null,
  icon_url: null,
  mime_type: null,
  google_drive_file_id: null
)
```

