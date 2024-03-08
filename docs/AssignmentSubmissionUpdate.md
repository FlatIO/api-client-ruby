# FlatApi::AssignmentSubmissionUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;ClassAttachmentCreation&gt;**](ClassAttachmentCreation.md) |  | [optional] |
| **submit** | **Boolean** | If &#x60;true&#x60;, the submission will be marked as done | [optional] |
| **draft_grade** | **Float** | Optional grade. If unset, no grade was set. This value is only visible by the teacher, and we will be set to &#x60;grade&#x60; once the teacher returns the submission | [optional] |
| **grade** | **Float** | Optional grade. If unset, no grade was set. | [optional] |
| **exercises_ids** | **Array&lt;String&gt;** | The ids of exercises when they need to be in a specific order | [optional] |
| **_return** | **Boolean** | If &#x60;true&#x60;, the submission will be marked as done | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::AssignmentSubmissionUpdate.new(
  attachments: null,
  submit: null,
  draft_grade: null,
  grade: null,
  exercises_ids: null,
  _return: null
)
```

