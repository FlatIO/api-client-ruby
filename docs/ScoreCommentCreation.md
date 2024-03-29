# FlatApi::ScoreCommentCreation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **revision** | **String** | The unique indentifier of the revision of the score where the comment was added. If this property is unspecified or contains \&quot;last\&quot;, the API will automatically take the last revision created.  | [optional] |
| **comment** | **String** | The comment text that can includes mentions using the following format: &#x60;@[id:username]&#x60;.  |  |
| **raw_comment** | **String** | A raw version of the comment, that can be displayed without the mentions. If you use mentions, this property must be set.  | [optional] |
| **mentions** | **Array&lt;String&gt;** | The list of user identifiers mentioned in this comment | [optional] |
| **reply_to** | **String** | When the comment is a reply to another comment, the unique identifier of the parent comment  | [optional] |
| **context** | [**ScoreCommentContext**](ScoreCommentContext.md) |  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreCommentCreation.new(
  revision: null,
  comment: null,
  raw_comment: null,
  mentions: null,
  reply_to: null,
  context: null
)
```

