# FlatApi::LtiConfiguration1p3

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration1p3.openapi_one_of
# =>
# [
#   :'LtiConfiguration1p3Deployment',
#   :'LtiConfiguration1p3Dynamic',
#   :'LtiConfiguration1p3Manual'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration1p3.build(data)
# => #<LtiConfiguration1p3Deployment:0x00007fdd4aab02a0>

FlatApi::LtiConfiguration1p3.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LtiConfiguration1p3Deployment`
- `LtiConfiguration1p3Dynamic`
- `LtiConfiguration1p3Manual`
- `nil` (if no type matches)

