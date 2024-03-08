# FlatApi::AssignmentUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**AssignmentType**](AssignmentType.md) |  | [optional] |
| **title** | **String** | Title of the assignment | [optional] |
| **description** | **String** | Description and content of the assignment | [optional] |
| **attachments** | [**Array&lt;ClassAttachmentCreation&gt;**](ClassAttachmentCreation.md) |  | [optional] |
| **nb_playback_authorized** | **Float** | The number of playback authorized on the scores of the assignment. | [optional] |
| **toolset** | **String** | The id of the toolset to apply to this assignment. The toolset will be copied to the assignment as a dedicated object to prevent unexpected changes when making modifications to the template toolset. This property can be set to null to delete the linked toolset and switch back to all the tools available for this assignment.  | [optional] |
| **cover_file** | **String** | The id of the cover to display | [optional] |
| **cover** | **String** | The URL of the cover to display | [optional] |
| **max_points** | **Float** | If set, the grading will be enabled for the assignement with this value as the maximum of points  | [optional] |
| **release_grades** | **String** | For worksheets, how grading will work for the assignment: - If set to &#x60;auto&#x60;, the grades will be automatically released when the student submits the submissions - If set to &#x60;manual&#x60;, the grades will only be set as &#x60;draftGrade&#x60; and will be released when the teacher returns the submissions  | [optional] |
| **shuffle_exercises** | **Boolean** | Mixing worksheets exercises for each student | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentUpdate.new(
  type: null,
  title: null,
  description: null,
  attachments: null,
  nb_playback_authorized: null,
  toolset: null,
  cover_file: null,
  cover: null,
  max_points: null,
  release_grades: null,
  shuffle_exercises: null
)
```

