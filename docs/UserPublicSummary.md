# FlatApi::UserPublicSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The user unique identifier | [optional] 
**username** | **String** | The user name (unique for the organization) | [optional] 
**name** | **String** | A displayable name for the user | [optional] 
**printable_name** | **String** | The name that can be directly printed (name or username) | [optional] 
**picture** | **String** | User pictue | [optional] 
**is_power_user** | **BOOLEAN** | User license status. &#39;True&#39; if user is an individual Power user | [optional] 
**organization** | **String** | Organization ID (for Edu users only) | [optional] 
**organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  | [optional] 
**class_role** | [**ClassRoles**](ClassRoles.md) |  | [optional] 
**html_url** | **String** | Link to user profile (for Indiv. users only) | [optional] 


