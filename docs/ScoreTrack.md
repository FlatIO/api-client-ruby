# FlatApi::ScoreTrack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the score track |  |
| **title** | **String** | Title of the track | [optional] |
| **score** | **String** | The unique identifier of the score |  |
| **creator** | **String** | The unique identifier of the track creator |  |
| **creation_date** | **Time** | The creation date of the track |  |
| **modification_date** | **Time** | The modification date of the track |  |
| **default** | **Boolean** | True if the track should be used as default audio source |  |
| **state** | [**ScoreTrackState**](ScoreTrackState.md) |  | [default to &#39;draft&#39;] |
| **type** | [**ScoreTrackType**](ScoreTrackType.md) |  |  |
| **purpose** | [**ScoreTrackPurpose**](ScoreTrackPurpose.md) |  | [default to &#39;common&#39;] |
| **url** | **String** | The URL of the track | [optional] |
| **media_id** | **String** | The unique identifier of the track when hosted on an external service. For example, if the url is &#x60;https://www.youtube.com/watch?v&#x3D;dQw4w9WgXcQ&#x60;, &#x60;mediaId&#x60; will be &#x60;dQw4w9WgXcQ&#x60;  | [optional] |
| **synchronization_points** | [**Array&lt;ScoreTrackPoint&gt;**](ScoreTrackPoint.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreTrack.new(
  id: null,
  title: null,
  score: null,
  creator: null,
  creation_date: null,
  modification_date: null,
  default: null,
  state: null,
  type: null,
  purpose: null,
  url: null,
  media_id: null,
  synchronization_points: null
)
```

