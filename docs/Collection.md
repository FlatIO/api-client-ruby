# FlatApi::Collection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the collection | [optional] |
| **title** | **String** | The title of the collection | [optional] |
| **html_url** | **String** | The url where the collection can be viewed in a web browser | [optional] |
| **type** | [**CollectionType**](CollectionType.md) |  | [optional] |
| **privacy** | [**CollectionPrivacy**](CollectionPrivacy.md) |  | [optional] |
| **sharing_key** | **String** | The private sharing key of the collection (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] |
| **app** | [**CollectionApp**](CollectionApp.md) |  | [optional] |
| **creation_date** | **Time** | The date when the collection was created | [optional] |
| **user** | [**UserPublicSummary**](UserPublicSummary.md) |  | [optional] |
| **organization** | **String** | If the score has been created in an organization, the identifier of this organization.   | [optional] |
| **rights** | [**ResourceRights**](ResourceRights.md) |  | [optional] |
| **collaborators** | [**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md) | The list of the collaborators of the collection | [optional] |
| **capabilities** | [**CollectionCapabilities**](CollectionCapabilities.md) |  |  |
| **collections** | **Array&lt;String&gt;** | The List of parent collections, which includes all the collections this score is included. Please note that you might not have access to all of them. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::Collection.new(
  id: null,
  title: null,
  html_url: null,
  type: null,
  privacy: null,
  sharing_key: null,
  app: null,
  creation_date: null,
  user: null,
  organization: null,
  rights: null,
  collaborators: null,
  capabilities: null,
  collections: null
)
```

