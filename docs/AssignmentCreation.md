# FlatApi::AssignmentCreation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Title of the assignment | [optional] 
**description** | **String** | Description and content of the assignment | [optional] 
**attachments** | [**Array&lt;ClassAttachmentCreation&gt;**](ClassAttachmentCreation.md) |  | [optional] 
**due_date** | **DateTime** | The due date of this assignment, late submissions will be marked as paste due. If not set, the assignment won&#39;t have a due date.  | [optional] 
**scheduled_date** | **DateTime** | The publication (scheduled) date of the assignment. If this one is specified, the assignment will only be listed to the teachers of the class.  | [optional] 


