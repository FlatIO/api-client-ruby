# FlatApi::ScoreComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The comment unique identifier | [optional] |
| **type** | **String** | The type of the comment | [optional] |
| **user** | **String** | The author unique identifier | [optional] |
| **score** | **String** | The unique identifier of the score where the comment was posted | [optional] |
| **revision** | **String** | The unique identifier of revision the comment was posted | [optional] |
| **reply_to** | **String** | When the comment is a reply to another comment, the unique identifier of the parent comment  | [optional] |
| **date** | **Time** | The date when the comment was posted | [optional] |
| **modification_date** | **Time** | The date of the last comment modification | [optional] |
| **comment** | **String** | The comment text that can includes mentions using the following format: &#x60;@[id:username]&#x60;.  | [optional] |
| **raw_comment** | **String** | A raw version of the comment, that can be displayed without parsing the mentions.  | [optional] |
| **context** | [**ScoreCommentContext**](ScoreCommentContext.md) |  | [optional] |
| **mentions** | **Array&lt;String&gt;** | The list of user identifier mentioned on the score | [optional] |
| **resolved** | **Boolean** | For inline comments, the comment can be marked as resolved and will be hidden in the future responses  | [optional] |
| **resolved_by** | **String** | If the user is marked as resolved, this will contain the unique identifier of the User who marked this comment as resolved  | [optional] |
| **moderation** | [**ScoreCommentModeration**](ScoreCommentModeration.md) |  | [optional] |
| **spam** | **Boolean** | &#x60;true  if the message has been detected as spam and hidden from other users  | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::ScoreComment.new(
  id: null,
  type: null,
  user: null,
  score: null,
  revision: null,
  reply_to: null,
  date: null,
  modification_date: null,
  comment: null,
  raw_comment: null,
  context: null,
  mentions: null,
  resolved: null,
  resolved_by: null,
  moderation: null,
  spam: null
)
```

