# FlatApi::ClassDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the class |  |
| **state** | [**ClassState**](ClassState.md) |  | [optional] |
| **name** | **String** | The name of the class | [optional] |
| **section** | **String** | The section of the class | [optional] |
| **description** | **String** | An optionnal description for this class | [optional] |
| **organization** | **String** | The unique identifier of the Organization owning this class | [optional] |
| **owner** | **String** | The unique identifier of the User owning this class | [optional] |
| **creation_date** | **Time** | The date when the class was create | [optional] |
| **enrollment_code** | **String** | [Teachers only] The enrollment code that can be used by the students to join the class  | [optional] |
| **theme** | **String** | The theme identifier using in Flat User Interface | [optional] |
| **assignments_count** | **Float** | The number of assignments created in the class | [optional] |
| **students_group** | [**GroupDetails**](GroupDetails.md) |  | [optional] |
| **teachers_group** | [**GroupDetails**](GroupDetails.md) |  | [optional] |
| **issues** | [**ClassDetailsIssues**](ClassDetailsIssues.md) |  | [optional] |
| **google_classroom** | [**ClassDetailsGoogleClassroom**](ClassDetailsGoogleClassroom.md) |  | [optional] |
| **google_drive** | [**ClassDetailsGoogleDrive**](ClassDetailsGoogleDrive.md) |  | [optional] |
| **microsoft_graph** | [**ClassDetailsMicrosoftGraph**](ClassDetailsMicrosoftGraph.md) |  | [optional] |
| **lti** | [**ClassDetailsLti**](ClassDetailsLti.md) |  | [optional] |
| **canvas** | [**ClassDetailsCanvas**](ClassDetailsCanvas.md) |  | [optional] |
| **mfc** | [**ClassDetailsMfc**](ClassDetailsMfc.md) |  | [optional] |
| **clever** | [**ClassDetailsClever**](ClassDetailsClever.md) |  | [optional] |
| **level** | [**ClassGradeLevel**](ClassGradeLevel.md) |  | [optional] |
| **skills_focused** | **Array&lt;String&gt;** | Specific skills that will be focused in classroom | [optional] |
| **size** | **Float** | Number of students in the classroom | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ClassDetails.new(
  id: null,
  state: null,
  name: null,
  section: null,
  description: null,
  organization: null,
  owner: null,
  creation_date: null,
  enrollment_code: null,
  theme: null,
  assignments_count: null,
  students_group: null,
  teachers_group: null,
  issues: null,
  google_classroom: null,
  google_drive: null,
  microsoft_graph: null,
  lti: null,
  canvas: null,
  mfc: null,
  clever: null,
  level: null,
  skills_focused: null,
  size: null
)
```

