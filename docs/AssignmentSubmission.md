# FlatApi::AssignmentSubmission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the submission |  |
| **state** | [**AssignmentSubmissionState**](AssignmentSubmissionState.md) |  |  |
| **classroom** | **String** | Unique identifier of the classroom where the assignment was posted  |  |
| **assignment** | **String** | Unique identifier of the assignment |  |
| **creator** | **String** | The User identifier of the student who created the submission |  |
| **creation_date** | **String** | The date when the submission was created |  |
| **attachments** | [**Array&lt;MediaAttachment&gt;**](MediaAttachment.md) |  |  |
| **submission_date** | **String** | The date when the student submitted their work | [optional] |
| **return_date** | **String** | The date when the teacher returned the work | [optional] |
| **return_creator** | **String** | The User unique identifier of the teacher who returned the submission  | [optional] |
| **grade** | **Float** | Optional grade. If unset, no grade was set. | [optional] |
| **draft_grade** | **Float** | Optional grade. If unset, no grade was set. This value is only visible by the teacher, and we will be set to &#x60;grade&#x60; once the teacher returns the submission | [optional] |
| **max_points** | **Float** | Optional max points for the grade. If set, a corresponding &#x60;draftGrade&#x60; or &#x60;grade&#x60; will be set. | [optional] |
| **exercises_ids** | **Array&lt;String&gt;** | The ids of exercises when they need to be in a specific order | [optional] |
| **playback** | [**Array&lt;AssignmentSubmissionPlaybackInner&gt;**](AssignmentSubmissionPlaybackInner.md) |  |  |
| **comments** | [**AssignmentSubmissionComments**](AssignmentSubmissionComments.md) |  |  |
| **google_classroom** | [**GoogleClassroomSubmission**](GoogleClassroomSubmission.md) |  | [optional] |
| **microsoft_graph** | [**MicrosoftGraphSubmission**](MicrosoftGraphSubmission.md) |  | [optional] |
| **lti** | [**AssignmentSubmissionLti**](AssignmentSubmissionLti.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentSubmission.new(
  id: null,
  state: null,
  classroom: null,
  assignment: null,
  creator: null,
  creation_date: null,
  attachments: null,
  submission_date: null,
  return_date: null,
  return_creator: null,
  grade: null,
  draft_grade: null,
  max_points: null,
  exercises_ids: null,
  playback: null,
  comments: null,
  google_classroom: null,
  microsoft_graph: null,
  lti: null
)
```

