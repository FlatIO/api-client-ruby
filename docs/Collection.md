# FlatApi::Collection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier of the collection | [optional] 
**title** | [**CollectionTitle**](CollectionTitle.md) |  | [optional] 
**html_url** | **String** | The url where the collection can be viewed in a web browser | [optional] 
**type** | [**CollectionType**](CollectionType.md) |  | [optional] 
**privacy** | [**CollectionPrivacy**](CollectionPrivacy.md) |  | [optional] 
**sharing_key** | **String** | The private sharing key of the collection (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] 
**app** | **String** | If this directory is dedicated to an app, the unique idenfier of this app | [optional] 
**user** | [**UserPublicSummary**](UserPublicSummary.md) |  | [optional] 
**rights** | [**ResourceRights**](ResourceRights.md) |  | [optional] 
**collaborators** | [**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md) | The list of the collaborators of the collection | [optional] 
**capabilities** | [**CollectionCapabilities**](CollectionCapabilities.md) |  | [optional] 


