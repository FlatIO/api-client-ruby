# FlatApi::Collection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the collection |  |
| **title** | **String** | The title of the collection |  |
| **html_url** | **String** | The url where the collection can be viewed in a web browser |  |
| **type** | [**CollectionType**](CollectionType.md) |  |  |
| **label_key** | **String** | Product-specific translation key for the collection type.  Only set for specific collection types: * For &#x60;regular&#x60; type: &#x60;playlist&#x60; (Flat) or &#x60;collection&#x60; (Flat for Education) * For &#x60;collaborations&#x60; type: &#x60;collaboration&#x60; (Flat) or &#x60;shared-scores&#x60; (Flat for Education)  Not set for other collection types.  | [optional] |
| **privacy** | [**CollectionPrivacy**](CollectionPrivacy.md) |  | [default to &#39;private&#39;] |
| **sharing_key** | **String** | The private sharing key of the collection (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] |
| **app** | [**CollectionApp**](CollectionApp.md) |  | [optional] |
| **creation_date** | **Time** | The date when the collection was created |  |
| **modification_date** | **Time** | The date when the collection was last modified | [optional] |
| **user** | [**UserPublicSummary**](UserPublicSummary.md) |  | [optional] |
| **organization** | **String** | If the score has been created in an organization, the identifier of this organization.   | [optional] |
| **rights** | [**ResourceRights**](ResourceRights.md) |  | [optional] |
| **collaborators** | [**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md) | The list of the collaborators of the collection | [optional] |
| **is_pinned** | **Boolean** | Whether the collection is pinned by the owner | [optional] |
| **contents** | [**CollectionContents**](CollectionContents.md) |  |  |
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
  label_key: null,
  privacy: null,
  sharing_key: null,
  app: null,
  creation_date: null,
  modification_date: null,
  user: null,
  organization: null,
  rights: null,
  collaborators: null,
  is_pinned: null,
  contents: null,
  capabilities: null,
  collections: null
)
```

