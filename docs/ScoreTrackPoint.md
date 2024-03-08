# FlatApi::ScoreTrackPoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the synchronization point. If the type is &#x60;measure&#x60;, the measure uuid must be present in &#x60;measureUuid&#x60; |  |
| **measure_uuid** | **String** | The measure unique identifier | [optional] |
| **time** | **Float** | The corresponding time in seconds |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreTrackPoint.new(
  type: null,
  measure_uuid: null,
  time: null
)
```

