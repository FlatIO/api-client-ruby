# FlatApi::ClassAssignment

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
| **creator** | **String** | The User unique identifier of the creator of this assignment  | [optional] |
| **state** | **String** | State of the assignment |  |
| **classroom** | **String** | The unique identifier of the class where this assignment was posted | [optional] |
| **creation_date** | **Time** | The creation date of this assignment |  |
| **scheduled_date** | **Time** | The publication (scheduled) date of the assignment. If this one is specified, the assignment will only be listed to the teachers of the class.  | [optional] |
| **due_date** | **Time** | The due date of this assignment, late submissions will be marked as paste due.  | [optional] |
| **assignee_mode** | **String** | Possible modes of assigning assignments | [optional] |
| **assigned_students** | **Array&lt;String&gt;** | Identifiers for the students that have access to the assignment | [optional] |
| **submissions** | [**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md) |  |  |
| **google_classroom** | [**GoogleClassroomCoursework**](GoogleClassroomCoursework.md) |  | [optional] |
| **microsoft_graph** | [**MicrosoftGraphAssignment**](MicrosoftGraphAssignment.md) |  | [optional] |
| **mfc** | [**ClassAssignmentAllOfMfc**](ClassAssignmentAllOfMfc.md) |  | [optional] |
| **canvas** | [**ClassAssignmentAllOfCanvas**](ClassAssignmentAllOfCanvas.md) |  | [optional] |
| **lti** | [**ClassAssignmentAllOfLti**](ClassAssignmentAllOfLti.md) |  | [optional] |
| **issue** | **String** | Detected issue for this assignment | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassAssignment.new(
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
  creator: null,
  state: null,
  classroom: null,
  creation_date: null,
  scheduled_date: null,
  due_date: null,
  assignee_mode: null,
  assigned_students: null,
  submissions: null,
  google_classroom: null,
  microsoft_graph: null,
  mfc: null,
  canvas: null,
  lti: null,
  issue: null
)
```

