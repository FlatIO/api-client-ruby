# FlatApi::ScoreCollaborator

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the score permission | [optional] 
**score** | **String** | The unique identifier of the score | [optional] 
**user** | [**UserPublic**](UserPublic.md) |  | [optional] 
**group** | [**Group**](Group.md) |  | [optional] 
**user_email** | **String** | If the collaborator is not a user of Flat yet, this field will contain his email.  | [optional] 
**acl_read** | **BOOLEAN** | &#x60;True&#x60; if the related user can read the score. (probably true if the user has a permission on the document).  | [optional] [default to true]
**acl_write** | **BOOLEAN** | &#x60;True&#x60; if the related user can modify the score.  | [optional] [default to false]
**acl_admin** | **BOOLEAN** | &#x60;True&#x60; if the related user can can manage the current document, i.e. changing the document permissions and deleting the document  | [optional] [default to false]


