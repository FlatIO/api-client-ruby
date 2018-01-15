# FlatApi::AssignmentSubmission

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier of the submission | [optional] 
**classroom** | **String** | Unique identifier of the classroom where the assignment was posted  | [optional] 
**assignment** | **String** | Unique identifier of the assignment | [optional] 
**creator** | **String** | The User identifier of the student who created the submission | [optional] 
**creation_date** | **String** | The date when the submission was created | [optional] 
**attachments** | [**Array&lt;MediaAttachment&gt;**](MediaAttachment.md) |  | [optional] 
**submission_date** | **String** | The date when the student submitted his work | [optional] 
**student_comment** | **String** | An optionnal comment sent by the student when submitting his work  | [optional] 
**return_date** | **String** | The date when the teacher returned the work | [optional] 
**return_feedback** | **String** | The feedback associated with the return | [optional] 
**return_creator** | **String** | The User unique identifier of the teacher who returned the submission  | [optional] 
**google_classroom** | [**GoogleClassroomSubmission**](GoogleClassroomSubmission.md) |  | [optional] 


