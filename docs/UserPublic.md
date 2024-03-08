# FlatApi::UserPublic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The user unique identifier |  |
| **type** | **String** | The type of user account |  |
| **product** | [**TutteoProduct**](TutteoProduct.md) |  | [default to &#39;flat&#39;] |
| **username** | **String** | The user name (unique for the organization) |  |
| **printable_name** | **String** | The name that can be directly printed (name, firstname &amp; lastname, or username) | [optional] |
| **firstname** | **String** | Firstname of the user (for education users) | [optional] |
| **lastname** | **String** | Lastname of the user (for education users) | [optional] |
| **name** | **String** | A displayable name for the user (for consumer users) | [optional] |
| **picture** | **String** | The URL of the picture to display |  |
| **badges** | **Array&lt;String&gt;** | List of badges for the user profile:  - &#x60;power&#x60; - &#x60;staff&#x60; - &#x60;composerOfTheMonth&#x60; - &#x60;ambassador&#x60; - &#x60;challenge&#x60;  | [optional] |
| **organization** | **String** | Organization ID (for Edu users only) | [optional] |
| **organization_role** | [**OrganizationRoles**](OrganizationRoles.md) |  | [optional] |
| **class_role** | [**ClassRoles**](ClassRoles.md) |  | [optional] |
| **html_url** | **String** | Link to user profile (for Indiv. users only) | [optional] |
| **bio** | **String** | User&#39;s biography | [optional] |
| **registration_date** | **Time** | Date the user signed up | [optional] |
| **liked_scores_count** | **Integer** | Number of the scores liked by the user | [optional] |
| **followers_count** | **Integer** | Number of followers the user have | [optional] |
| **following_count** | **Integer** | Number of people the user follow | [optional] |
| **owned_public_scores_count** | **Integer** | Number of public scores the user have | [optional] |
| **cover_picture** | **String** | Cover picture (backgroud) for the profile | [optional] |
| **profile_theme** | **String** | Theme (background) for the profile | [optional] |
| **instruments** | **Array&lt;String&gt;** | An array of the instrument identifiers. The format of the strings is &#x60;{instrument-group}.{instrument-id}&#x60;.  | [optional] |
| **links** | [**UserCommunityProfileLinks**](UserCommunityProfileLinks.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserPublic.new(
  id: null,
  type: null,
  product: null,
  username: null,
  printable_name: null,
  firstname: null,
  lastname: null,
  name: null,
  picture: null,
  badges: null,
  organization: null,
  organization_role: null,
  class_role: null,
  html_url: null,
  bio: null,
  registration_date: null,
  liked_scores_count: null,
  followers_count: null,
  following_count: null,
  owned_public_scores_count: null,
  cover_picture: null,
  profile_theme: null,
  instruments: null,
  links: null
)
```

