# FlatApi::ScoreRevision

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the revision. | [optional] |
| **user** | **String** | The user identifier who created the revision | [optional] |
| **collaborators** | **Array&lt;String&gt;** |  | [optional] |
| **creation_date** | **Time** | The date when this revision was created | [optional] |
| **event** | **String** | The last event (action id) of the revision | [optional] |
| **description** | **String** | A description associated to the revision | [optional] |
| **autosave** | **Boolean** | True if this revision was automatically generated by Flat and not on purpose by the user.  | [optional] |
| **statistics** | [**ScoreRevisionStatistics**](ScoreRevisionStatistics.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreRevision.new(
  id: null,
  user: null,
  collaborators: null,
  creation_date: null,
  event: null,
  description: null,
  autosave: null,
  statistics: null
)
```

