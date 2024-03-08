# FlatApi::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the task |  |
| **type** | **String** | Type of the task (e.g. audio-export) | [optional] |
| **state** | **String** | State of the Task |  |
| **format** | **String** | For files processing, the file format (e.g. &#x60;mp3&#x60;, &#x60;wav&#x60;) | [optional] |
| **score** | **String** | The score unique identifier for tasks related to scores | [optional] |
| **progress** | [**TaskProgress**](TaskProgress.md) |  | [optional] |
| **creation_date** | **Time** | The creation date of the task | [optional] |
| **modification_date** | **Time** | The last modification date of the task | [optional] |
| **done_date** | **Time** | The date when the task has been completed | [optional] |
| **result** | [**TaskResult**](TaskResult.md) |  | [optional] |
| **error_history** | **Array&lt;String&gt;** | If any errors happened when processing this task, the list of errors identifiers | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::Task.new(
  id: null,
  type: null,
  state: null,
  format: null,
  score: null,
  progress: null,
  creation_date: null,
  modification_date: null,
  done_date: null,
  result: null,
  error_history: null
)
```

