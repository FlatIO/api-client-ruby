# FlatApi::OrganizationInvitation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The invitation unique identifier | [optional] 
**organization** | **String** | The unique identifier of the Organization owning this class | [optional] 
**organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  | [optional] 
**custom_code** | **String** | Enrollment code to use when joining this organization | [optional] 
**email** | **String** | The email address this invitation was sent to | [optional] 
**invited_by** | **String** | The unique identifier of the User who created this invitation | [optional] 
**used_by** | **String** | The unique identifier of the User who used this invitation | [optional] 


