# FlatApi::OmrJobResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **String** | Created score ID, when &#x60;output&#x60; is &#x60;library&#x60;. | [optional] |
| **exports** | **Array&lt;String&gt;** | Formats available via &#x60;getOmrJobExport&#x60;, for example &#x60;[\&quot;musicxml\&quot;, \&quot;mxl\&quot;, \&quot;midi\&quot;]&#x60;. | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::OmrJobResult.new(
  score: null,
  exports: null
)
```

