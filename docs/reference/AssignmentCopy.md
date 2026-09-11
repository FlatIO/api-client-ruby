# FlatApi::AssignmentCopy

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'flat_api'

FlatApi::AssignmentCopy.openapi_one_of
# =>
# [
#   :'AssignmentCopyToClass',
#   :'AssignmentCopyToResourceLibrary'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'flat_api'

FlatApi::AssignmentCopy.build(data)
# => #<AssignmentCopyToClass:0x00007fdd4aab02a0>

FlatApi::AssignmentCopy.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AssignmentCopyToClass`
- `AssignmentCopyToResourceLibrary`
- `nil` (if no type matches)

