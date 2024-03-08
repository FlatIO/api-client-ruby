# FlatApi::AssignmentCopyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the assignment |  |
| **type** | [**AssignmentType**](AssignmentType.md) |  |  |
| **capabilities** | [**AssignmentCapabilities**](AssignmentCapabilities.md) |  |  |
| **title** | **String** | Title of the assignment |  |
| **description** | **String** | Description and content of the assignment | [optional] |
| **cover** | **String** | The URL of the cover to display | [optional] |
| **cover_file** | **String** | The id of the cover to display | [optional] |
| **attachments** | [**Array&lt;MediaAttachment&gt;**](MediaAttachment.md) |  |  |
| **use_dedicated_attachments** | **Boolean** | For all assignments created after 02/2023, all the underlying resources must be dedicated and stored in the assignment. This boolean indicates that this assignment only supports dedicated attachments.  | [optional] |
| **max_points** | **Float** | If set, the grading will be enabled for the assignement  | [optional] |
| **release_grades** | **String** | For worksheets, how grading will work for the assignment: - If set to &#x60;auto&#x60;, the grades will be automatically released when the student submits the submissions - If set to &#x60;manual&#x60;, the grades will only be set as &#x60;draftGrade&#x60; and will be released when the teacher returns the submissions  | [optional] |
| **shuffle_exercises** | **Boolean** | Mixing worksheets exercises for each student | [optional] |
| **toolset** | **String** | The id of the associated toolset | [optional] |
| **nb_playback_authorized** | **Float** | The number of playback authorized on the scores of the assignment. | [optional] |
| **resource** | **String** | If this assignment is stored as a resource in the Flat for Education Resource Library, the unique identifier of the resource. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentCopyResponse.new(
  id: null,
  type: null,
  capabilities: null,
  title: null,
  description: null,
  cover: null,
  cover_file: null,
  attachments: null,
  use_dedicated_attachments: null,
  max_points: null,
  release_grades: null,
  shuffle_exercises: null,
  toolset: null,
  nb_playback_authorized: null,
  resource: null
)
```

