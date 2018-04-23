# FlatApi::ScoreDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the score | [optional] 
**sharing_key** | **String** | The private sharing key of the score (available when the &#x60;privacy&#x60; mode is set to &#x60;privateLink&#x60;) | [optional] 
**title** | **String** | The title of the score | [optional] 
**privacy** | [**ScorePrivacy**](ScorePrivacy.md) |  | [optional] 
**user** | [**UserPublicSummary**](UserPublicSummary.md) |  | [optional] 
**html_url** | **String** | The url where the score can be viewed in a web browser | [optional] 
**subtitle** | **String** | Subtitle of the score | [optional] 
**lyricist** | **String** | Lyricist of the score | [optional] 
**composer** | **String** | Composer of the score | [optional] 
**description** | **String** | Description of the creation | [optional] 
**tags** | **Array&lt;String&gt;** | Tags describing the score | [optional] 
**creation_type** | [**ScoreCreationType**](ScoreCreationType.md) |  | [optional] 
**license** | [**ScoreLicense**](ScoreLicense.md) |  | [optional] 
**license_text** | **String** | Additional license text written on the exported/printed score | [optional] 
**duration_time** | **Integer** | In seconds, an approximative duration of the score | [optional] 
**number_measures** | **Integer** | The number of measures in the score | [optional] 
**main_tempo_qpm** | **Integer** | The main tempo of the score (in QPM) | [optional] 
**rights** | [**ResourceRights**](ResourceRights.md) |  | [optional] 
**collaborators** | [**Array&lt;ResourceCollaborator&gt;**](ResourceCollaborator.md) | The list of the collaborators of the score | [optional] 
**creation_date** | **DateTime** | The date when the score was created | [optional] 
**modification_date** | **DateTime** | The date of the last revision of the score | [optional] 
**publication_date** | **DateTime** | The date when the score was published on Flat | [optional] 
**organization** | **String** | If the score has been created in an organization, the identifier of this organization. This property is especially used with the score privacy &#x60;organizationPublic&#x60;.  | [optional] 
**parent_score** | **String** | If the score has been forked, the unique identifier of the parent score.  | [optional] 
**instruments** | **Array&lt;String&gt;** | An array of the instrument identifiers used in the last version of the score. This is mainly used to display a list of the instruments in the Flat&#39;s UI or instruments icons. The format of the strings is &#x60;{instrument-group}.{instrument-id}&#x60;.  | [optional] 
**google_drive_file_id** | **String** | If the user uses Google Drive and the score exists on Google Drive, this field will contain the unique identifier of the Flat score on Google Drive. You can access the document using the url: &#x60;https://drive.google.com/open?id&#x3D;{googleDriveFileId}&#x60;  | [optional] 
**likes** | [**ScoreLikesCounts**](ScoreLikesCounts.md) |  | [optional] 
**comments** | [**ScoreCommentsCounts**](ScoreCommentsCounts.md) |  | [optional] 
**views** | [**ScoreViewsCounts**](ScoreViewsCounts.md) |  | [optional] 


