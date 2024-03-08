# FlatApi::ClassAssignmentUpdate

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
| **state** | **String** | State of the assignment | [optional] |
| **due_date** | **Time** | The due date of this assignment, late submissions will be marked as paste due. If not set, the assignment won&#39;t have a due date.  | [optional] |
| **scheduled_date** | **Time** | The publication (scheduled) date of the assignment. If this one is specified, the assignment will only be listed to the teachers of the class.  | [optional] |
| **google_classroom** | [**ClassAssignmentUpdateAllOfGoogleClassroom**](ClassAssignmentUpdateAllOfGoogleClassroom.md) |  | [optional] |
| **microsoft_graph** | [**ClassAssignmentUpdateAllOfMicrosoftGraph**](ClassAssignmentUpdateAllOfMicrosoftGraph.md) |  | [optional] |
| **assignee_mode** | **String** | Possible modes of assigning assignments | [optional] |
| **assigned_students** | **Array&lt;String&gt;** | Identifiers for the students that have access to the assignment | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassAssignmentUpdate.new(
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
  shuffle_exercises: null,
  state: null,
  due_date: null,
  scheduled_date: null,
  google_classroom: null,
  microsoft_graph: null,
  assignee_mode: null,
  assigned_students: null
)
```

