# FlatApi::UserDetails

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
| **all_public_scores_count** | **Integer** | Total number of public scores the user participates in (owned + joined) | [optional] |
| **likes_count** | **Integer** | Number of likes on the user published scores | [optional] |
| **plays_count** | **Integer** | Number of plays on the user published scores | [optional] |
| **cover_picture** | **String** | Cover picture (backgroud) for the profile | [optional] |
| **profile_theme** | **String** | Theme (background) for the profile | [optional] |
| **links** | [**UserCommunityProfileLinks**](UserCommunityProfileLinks.md) |  | [optional] |
| **is_email_verified** | **Boolean** | Whether the user&#39;s email address has been verified | [optional] |
| **azure_details** | [**UserAzureDetails**](UserAzureDetails.md) |  | [optional] |
| **private_profile** | **Boolean** | Tell either this user profile is private or not (individual accounts only) | [optional] |
| **locale** | **String** | The user language. Input values will be automatically normalized to a supported locale code. Unknown locales will default to &#x60;en&#x60;.  Current supported locales include: &#x60;da&#x60;, &#x60;de&#x60;, &#x60;en&#x60;, &#x60;en-GB&#x60;, &#x60;es&#x60;, &#x60;fi&#x60;, &#x60;fil&#x60;, &#x60;fr&#x60;, &#x60;fr-CA&#x60;, &#x60;hi&#x60;, &#x60;id&#x60;, &#x60;it&#x60;, &#x60;ja&#x60;, &#x60;ja-HIRA&#x60;, &#x60;ko&#x60;, &#x60;ms&#x60;, &#x60;nb&#x60;, &#x60;nl&#x60;, &#x60;pl&#x60;, &#x60;pt&#x60;, &#x60;pt-BR&#x60;, &#x60;ro&#x60;, &#x60;ru&#x60;, &#x60;sv&#x60;, &#x60;tr&#x60;, &#x60;zh-Hans&#x60;, &#x60;zh-HK&#x60;, &#x60;zh-TW&#x60;  | [optional][default to &#39;en&#39;] |
| **groups** | **Array&lt;String&gt;** | For Flat for Education accounts, list of Group identifiers the user is part of. | [optional] |
| **picture_file** | **String** | The ID of the user profile picture | [optional] |
| **cover_picture_file** | **String** | The ID of the user profile cover picture | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserDetails.new(
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
  all_public_scores_count: null,
  likes_count: null,
  plays_count: null,
  cover_picture: null,
  profile_theme: null,
  links: null,
  is_email_verified: null,
  azure_details: null,
  private_profile: null,
  locale: null,
  groups: null,
  picture_file: null,
  cover_picture_file: null
)
```

