# FlatApi::AssignmentSubmissionHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Time** | The date when the submission was changed |  |
| **classroom** | **String** | The classroom unique identifier where the submission was changed | [optional] |
| **assignment** | **String** | The assignment unique identifier where the submission was changed | [optional] |
| **submission** | **String** | The submission unique identifier | [optional] |
| **users** | **Array&lt;String&gt;** | The user(s) unique identifier(s) who made the change |  |
| **source** | **String** | The source of the change if the change was made by a third-party software | [optional] |
| **state** | [**AssignmentSubmissionHistoryState**](AssignmentSubmissionHistoryState.md) |  | [optional] |
| **draft_grade** | **Float** | The numerator of the grade at this time in the submission grade history | [optional] |
| **grade** | **Float** | The numerator of the grade at this time in the submission grade history | [optional] |
| **max_points** | **Float** | The denominator of the grade at this time in the submission grade history | [optional] |
| **comment** | **String** | The comment that is made to this submission | [optional] |
| **due_date** | **Time** | The due date of this assignment | [optional] |
| **attachment** | [**AssignmentSubmissionHistoryAttachment**](AssignmentSubmissionHistoryAttachment.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentSubmissionHistory.new(
  date: null,
  classroom: null,
  assignment: null,
  submission: null,
  users: null,
  source: null,
  state: null,
  draft_grade: null,
  grade: null,
  max_points: null,
  comment: null,
  due_date: null,
  attachment: null
)
```

