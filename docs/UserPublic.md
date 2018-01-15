# FlatApi::UserPublic

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
**bio** | **String** | User&#39;s biography | [optional] 
**registration_date** | **DateTime** | Date the user signed up | [optional] 
**liked_scores_count** | **Integer** | Number of the scores liked by the user | [optional] 
**followers_count** | **Integer** | Number of followers the user have | [optional] 
**following_count** | **Integer** | Number of people the user follow | [optional] 
**owned_public_scores_count** | **Integer** | Number of public scores the user have | [optional] 
**profile_theme** | **String** | Theme (background) for the profile | [optional] 
**instruments** | [**UserInstruments**](UserInstruments.md) |  | [optional] 


