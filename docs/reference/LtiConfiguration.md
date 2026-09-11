# FlatApi::LtiConfiguration

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration.openapi_one_of
# =>
# [
#   :'LtiConfiguration1p1',
#   :'LtiConfiguration1p3'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration.openapi_discriminator_name
# => :'lti_version'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration.openapi_discriminator_mapping
# =>
# {
#   :'1p1' => :'LtiConfiguration1p1',
#   :'1p3' => :'LtiConfiguration1p3'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'flat_api'

FlatApi::LtiConfiguration.build(data)
# => #<LtiConfiguration1p1:0x00007fdd4aab02a0>

FlatApi::LtiConfiguration.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LtiConfiguration1p1`
- `LtiConfiguration1p3`
- `nil` (if no type matches)

