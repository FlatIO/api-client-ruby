# FlatApi::ClassDetailsClever

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Clever section unique identifier | [optional] |
| **creation_date** | **Time** | The creation date of the section on clever | [optional] |
| **modification_date** | **Time** | The last modification date of the section on clever | [optional] |
| **subject** | **String** | Normalized subject of the course | [optional] |
| **term_name** | **String** | Name of the term when this course happens | [optional] |
| **term_start_date** | **Time** | Beginning date of the term | [optional] |
| **term_end_date** | **Time** | End date of the term | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassDetailsClever.new(
  id: null,
  creation_date: null,
  modification_date: null,
  subject: null,
  term_name: null,
  term_start_date: null,
  term_end_date: null
)
```

