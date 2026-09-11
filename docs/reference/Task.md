# FlatApi::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of the task |  |
| **type** | **String** | Type of the task: * &#x60;audio-export&#x60;: Exports a score to audio format (MP3, WAV) * &#x60;score-save&#x60;: Saves or updates a score document * &#x60;import-omr&#x60;: Processes a PDF through OMR (Optical Music Recognition) and imports it as a score  | [optional] |
| **state** | **String** | State of the Task |  |
| **format** | **String** | For files processing, the file format (e.g. &#x60;mp3&#x60;, &#x60;wav&#x60;) | [optional] |
| **score** | **String** | The score unique identifier for tasks related to scores | [optional] |
| **revision** | **String** | The score revision identifier for tasks related to scores | [optional] |
| **progress** | [**TaskProgress**](TaskProgress.md) |  | [optional] |
| **creation_date** | **Time** | The creation date of the task | [optional] |
| **modification_date** | **Time** | The last modification date of the task | [optional] |
| **done_date** | **Time** | The date when the task has been completed | [optional] |
| **result** | [**TaskResult**](TaskResult.md) |  | [optional] |
| **error_history** | **Array&lt;String&gt;** | If any errors happened when processing this task, the list of errors identifiers | [optional] |
| **is_cancellable** | **Boolean** | Whether the task can be canceled by the user. Only &#x60;true&#x60; when the task is in &#x60;created&#x60; state (waiting to be processed).  | [optional][readonly] |
| **children** | [**Array&lt;Task&gt;**](Task.md) | Child tasks for hierarchical task structures (e.g., conversion subtasks) | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::Task.new(
  id: null,
  type: null,
  state: null,
  format: null,
  score: null,
  revision: null,
  progress: null,
  creation_date: null,
  modification_date: null,
  done_date: null,
  result: null,
  error_history: null,
  is_cancellable: null,
  children: null
)
```

