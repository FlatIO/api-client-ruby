# FlatApi::OmrJobProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **percent** | **Float** | Completion percentage (0-100). | [optional] |
| **text** | **String** | Localized progress message, ready to display. | [optional] |
| **key** | **String** | Stable progress key (for example &#x60;OMR_QUEUED&#x60;, &#x60;OMR_PROCESSING_PAGE&#x60;, &#x60;OMR_CREATING_SCORE&#x60;), for matching the current phase in a stepper UI independent of locale.  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobProgress.new(
  percent: null,
  text: null,
  key: null
)
```

