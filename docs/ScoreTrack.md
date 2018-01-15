# FlatApi::ScoreTrack

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of the score track | [optional] 
**title** | **String** | Title of the track | [optional] 
**score** | **String** | The unique identifier of the score | [optional] 
**creator** | **String** | The unique identifier of the track creator | [optional] 
**creation_date** | **DateTime** | The creation date of the track | [optional] 
**modification_date** | **DateTime** | The modification date of the track | [optional] 
**default** | **BOOLEAN** | True if the track should be used as default audio source | [optional] 
**state** | [**ScoreTrackState**](ScoreTrackState.md) |  | [optional] 
**type** | [**ScoreTrackType**](ScoreTrackType.md) |  | [optional] 
**url** | **String** | The URL of the track | [optional] 
**media_id** | **String** | The unique identifier of the track when hosted on an external service. For example, if the url is &#x60;https://www.youtube.com/watch?v&#x3D;dQw4w9WgXcQ&#x60;, &#x60;mediaId&#x60; will be &#x60;dQw4w9WgXcQ&#x60;  | [optional] 
**synchronization_points** | [**Array&lt;ScoreTrackPoint&gt;**](ScoreTrackPoint.md) |  | [optional] 


