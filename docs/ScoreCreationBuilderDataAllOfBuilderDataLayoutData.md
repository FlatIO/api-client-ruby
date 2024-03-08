# FlatApi::ScoreCreationBuilderDataAllOfBuilderDataLayoutData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notes_spacing_coeff** | **Float** | A float value &gt;&#x3D; 1 that controls the spacing between notes. | [optional] |
| **length_unit** | **String** | The unit to use for layout customizations | [optional][default to &#39;cm&#39;] |
| **page_height** | **Float** | The height of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |
| **page_width** | **Float** | The width of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |
| **page_margin_top** | **Float** | The top margin of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |
| **page_margin_bottom** | **Float** | The bottom margin of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |
| **page_margin_left** | **Float** | The left margin of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |
| **page_margin_right** | **Float** | The right margin of the page in chosen unit (&#x60;lengthUnit&#x60;). | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCreationBuilderDataAllOfBuilderDataLayoutData.new(
  notes_spacing_coeff: null,
  length_unit: null,
  page_height: null,
  page_width: null,
  page_margin_top: null,
  page_margin_bottom: null,
  page_margin_left: null,
  page_margin_right: null
)
```

