# FlatApi::Assignment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **String** | State of the assignment | [optional] 
**title** | **String** | Title of the assignment | [optional] 
**classroom** | **String** | The unique identifier of the class where this assignment was posted | [optional] 
**description** | **String** | Description and content of the assignment | [optional] 
**attachments** | [**Array&lt;MediaAttachment&gt;**](MediaAttachment.md) |  | [optional] 
**submissions** | [**Array&lt;AssignmentSubmission&gt;**](AssignmentSubmission.md) |  | [optional] 
**creator** | **String** | The User unique identifier of the creator of this assignment  | [optional] 
**creation_date** | **DateTime** | The creation date of this assignment | [optional] 
**scheduled_date** | **DateTime** | The publication (scheduled) date of the assignment. If this one is specified, the assignment will only be listed to the teachers of the class.  | [optional] 
**due_date** | **DateTime** | The due date of this assignment, late submissions will be marked as paste due.  | [optional] 
**google_classroom** | [**GoogleClassroomCoursework**](GoogleClassroomCoursework.md) |  | [optional] 


