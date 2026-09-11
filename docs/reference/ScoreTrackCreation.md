# FlatApi::ScoreTrackCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the track | [optional] |
| **default** | **Boolean** | True if the track should be used as default audio source | [optional] |
| **state** | [**ScoreTrackState**](ScoreTrackState.md) |  | [optional][default to &#39;draft&#39;] |
| **purpose** | [**ScoreTrackPurpose**](ScoreTrackPurpose.md) |  | [optional][default to &#39;common&#39;] |
| **url** | **String** | The URL of the track | [optional] |
| **synchronization_points** | [**Array&lt;ScoreTrackPoint&gt;**](ScoreTrackPoint.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreTrackCreation.new(
  title: null,
  default: null,
  state: null,
  purpose: null,
  url: null,
  synchronization_points: null
)
```

