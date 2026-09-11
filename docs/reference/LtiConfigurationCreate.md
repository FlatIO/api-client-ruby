# FlatApi::LtiConfigurationCreate

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfigurationCreate.openapi_one_of
# =>
# [
#   :'LtiConfigurationCreate1p1',
#   :'LtiConfigurationCreate1p3Deployment',
#   :'LtiConfigurationCreate1p3Dynamic',
#   :'LtiConfigurationCreate1p3Manual'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfigurationCreate.openapi_discriminator_name
# => :'mode'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfigurationCreate.openapi_discriminator_mapping
# =>
# {
#   :'1p1-manual' => :'LtiConfigurationCreate1p1',
#   :'1p3-deployment' => :'LtiConfigurationCreate1p3Deployment',
#   :'1p3-dynamic' => :'LtiConfigurationCreate1p3Dynamic',
#   :'1p3-manual' => :'LtiConfigurationCreate1p3Manual'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfigurationCreate.build(data)
# => #<LtiConfigurationCreate1p1:0x00007fdd4aab02a0>

FlatApi::LtiConfigurationCreate.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LtiConfigurationCreate1p1`
- `LtiConfigurationCreate1p3Deployment`
- `LtiConfigurationCreate1p3Dynamic`
- `LtiConfigurationCreate1p3Manual`
- `nil` (if no type matches)

