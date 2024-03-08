# FlatApi::UserCommunityProfileLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spotify_url** | **String** | Spotify Profile URL | [optional] |
| **youtube_url** | **String** | YouTube channel URL | [optional] |
| **soundcloud_url** | **String** | SoundCloud Profile URL | [optional] |
| **tiktok_url** | **String** | TikTok profile URL. For updates, also accepts TikTok usernames | [optional] |
| **instagram_url** | **String** | Instagram profile URL. For updates, also accepts Instagram usernames | [optional] |
| **website_url** | **String** | Personnal website URL | [optional] |

## Example

```ruby
require 'flat_api'

instance = FlatApi::UserCommunityProfileLinks.new(
  spotify_url: null,
  youtube_url: null,
  soundcloud_url: null,
  tiktok_url: null,
  instagram_url: null,
  website_url: null
)
```

