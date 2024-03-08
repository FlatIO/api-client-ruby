# FlatApi::ScoreCommentContext

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part_uuid** | **String** | The unique identifier (UUID) of the score part |  |
| **staff_idx** | **Float** | (Deprecated, use &#x60;staffUuid&#x60;) The identififer of the staff | [optional] |
| **staff_uuid** | **String** | The unique identififer (UUID) of the staff | [optional] |
| **measure_uuids** | **Array&lt;String&gt;** | The list of measure UUIds |  |
| **start_time_pos** | **Float** |  |  |
| **stop_time_pos** | **Float** |  |  |
| **start_dpq** | **Float** |  |  |
| **stop_dpq** | **Float** |  |  |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCommentContext.new(
  part_uuid: null,
  staff_idx: null,
  staff_uuid: null,
  measure_uuids: null,
  start_time_pos: null,
  stop_time_pos: null,
  start_dpq: null,
  stop_dpq: null
)
```

