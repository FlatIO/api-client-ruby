# FlatApi::ScoreCollaboratorCreation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user** | **String** | The unique identifier of a Flat user | [optional] 
**group** | **String** | The unique identifier of a Flat group | [optional] 
**user_email** | **String** | Fill this field to invite an individual user by email.  | [optional] 
**acl_read** | **BOOLEAN** | &#x60;True&#x60; if the related user can read the score. (probably true if the user has a permission on the document).  | [optional] [default to true]
**acl_write** | **BOOLEAN** | &#x60;True&#x60; if the related user can modify the score.  | [optional] [default to false]
**acl_admin** | **BOOLEAN** | &#x60;True&#x60; if the related user can can manage the current document, i.e. changing the document permissions and deleting the document  | [optional] [default to false]


