# FlatApi::ScoreDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the score |  |
| **sharing_key** | **String** | The private sharing key of the score (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] |
| **title** | **String** | The title of the score |  |
| **privacy** | [**ScorePrivacy**](ScorePrivacy.md) |  | [default to &#39;private&#39;] |
| **user** | [**UserPublic**](UserPublic.md) |  |  |
| **html_url** | **String** | The url where the score can be viewed in a web browser |  |
| **subtitle** | **String** | Subtitle of the score | [optional] |
| **lyricist** | **String** | Lyricist of the score | [optional] |
| **arranger** | **String** | Arranger of the score | [optional] |
| **composer** | **String** | Composer of the score | [optional] |
| **description** | **String** | Description of the creation | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags describing the score | [optional] |
| **creation_type** | [**ScoreCreationType**](ScoreCreationType.md) |  | [optional] |
| **license** | [**ScoreLicense**](ScoreLicense.md) |  | [optional] |
| **license_text** | **String** | Additional license text written on the exported/printed score | [optional] |
| **duration_time** | **Float** | In seconds, an approximative duration of the score | [optional] |
| **number_measures** | **Integer** | The number of measures in the score | [optional] |
| **main_tempo_qpm** | **Float** | The main tempo of the score (in QPM) | [optional] |
| **main_key_signature** | **Float** | The main key signature of the score (expressed between -7 and 7). | [optional] |
| **rights** | [**ResourceRights**](ResourceRights.md) |  |  |
| **collaborators** | [**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md) | The list of the collaborators of the score |  |
| **creation_date** | **Time** | The date when the score was created |  |
| **modification_date** | **Time** | The date of the last revision of the score | [optional] |
| **publication_date** | **Time** | The date when the score was published on Flat | [optional] |
| **highlighted_date** | **Time** | The date when the score was highlighted (featured) on our community | [optional] |
| **organization** | **String** | If the score has been created in an organization, the identifier of this organization. This property is especially used with the score privacy &#x60;organizationPublic&#x60;.  | [optional] |
| **parent_score** | **String** | If the score has been forked, the unique identifier of the parent score.  | [optional] |
| **instruments** | **Array&lt;String&gt;** | An array of the instrument identifiers used in the last version of the score. This is mainly used to display a list of the instruments in the Flat&#39;s UI or instruments icons. The format of the strings is &#x60;{instrument-group}.{instrument-id}&#x60;.  |  |
| **samples** | **Array&lt;String&gt;** | An array of the audio samples identifiers used the different score parts. The format of the strings is &#x60;{instrument-group}.{sample-id}&#x60;.  |  |
| **google_drive_file_id** | **String** | If the user uses Google Drive and the score exists on Google Drive, this field will contain the unique identifier of the Flat score on Google Drive. You can access the document using the url: &#x60;https://drive.google.com/open?id&#x3D;{googleDriveFileId}&#x60;  | [optional] |
| **likes** | [**ScoreLikesCounts**](ScoreLikesCounts.md) |  | [optional] |
| **comments** | [**ScoreCommentsCounts**](ScoreCommentsCounts.md) |  | [optional] |
| **views** | [**ScoreViewsCounts**](ScoreViewsCounts.md) |  | [optional] |
| **plays** | [**ScorePlaysCounts**](ScorePlaysCounts.md) |  | [optional] |
| **collections** | **Array&lt;String&gt;** | The List of parent collections, which includes all the collections this score is included. Please note that you might not have access to all of them. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreDetails.new(
  id: null,
  sharing_key: null,
  title: null,
  privacy: null,
  user: null,
  html_url: null,
  subtitle: null,
  lyricist: null,
  arranger: null,
  composer: null,
  description: null,
  tags: null,
  creation_type: null,
  license: null,
  license_text: null,
  duration_time: null,
  number_measures: null,
  main_tempo_qpm: null,
  main_key_signature: null,
  rights: null,
  collaborators: null,
  creation_date: null,
  modification_date: null,
  publication_date: null,
  highlighted_date: null,
  organization: null,
  parent_score: null,
  instruments: null,
  samples: null,
  google_drive_file_id: null,
  likes: null,
  comments: null,
  views: null,
  plays: null,
  collections: null
)
```

