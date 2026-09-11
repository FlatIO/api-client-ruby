# FlatApi::ScoreCreation

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'flat_api'

FlatApi::ScoreCreation.openapi_one_of
# =>
# [
#   :'ScoreCreationBuilderData',
#   :'ScoreCreationFileImport',
#   :'ScoreCreationGoogleDriveImport'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'flat_api'

FlatApi::ScoreCreation.build(data)
# => #<ScoreCreationBuilderData:0x00007fdd4aab02a0>

FlatApi::ScoreCreation.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ScoreCreationBuilderData`
- `ScoreCreationFileImport`
- `ScoreCreationGoogleDriveImport`
- `nil` (if no type matches)

