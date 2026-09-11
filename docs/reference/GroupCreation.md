# FlatApi::GroupCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of group (currently only classStudentsSubGroup is supported) |  |
| **classroom** | **String** | Classroom ID |  |
| **name** | **String** | Name of the group (optional - auto-generated if not provided).  **Special names:**  * &#x60;edu:testing-students&#x60;: Creates a group tagged for test student accounts. The display name will be localized (e.g., \&quot;Test Students\&quot;) and the group will be tagged with &#x60;edu:testing-students&#x60;.  | [optional] |
| **members** | **Array&lt;String&gt;** | Array of student IDs to add to the group | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::GroupCreation.new(
  type: null,
  classroom: null,
  name: null,
  members: null
)
```

