# Quickstart

From nothing to your first authenticated call.

## 1. Get a token

Create a [Personal Access Token](https://flat.io/developers/apps). It behaves like an OAuth access
token scoped to your own account, which is all you need to start.

## 2. Install

```sh
gem install flat_api
```

Requires Ruby 3.3 and 3.4.

## 3. Call the API

```ruby
require 'flat_api'

client = FlatApi::FlatClient.new(access_token: 'YOUR_TOKEN')
puts client.account.get_authenticated_user.username
```

If that prints your username, you are done.

## 4. Do something useful

List your collections. The client follows the cursor for you:

```ruby
client.paginate(:list_collections, parent: 'user') do |collection|
  puts collection.title
end
```

Each generated API is reachable by a short name: `client.scores`, `client.collections`,
`client.classes`, `client.omr`, and so on.

## 5. Handle failure properly

```ruby
begin
  # ...
rescue FlatApi::FlatRateLimitError => e
  puts "retry after #{e.reset}"
rescue FlatApi::FlatNotFoundError
  puts 'no such score'
end
```

Two things worth knowing about the Flat API specifically:

- Rate limiting returns **403**, not 429, and carries no `Retry-After`. The reset time is in
  `X-RateLimit-Reset`. The client already handles this; the note matters if you disable retries.
- The error `id` is only present on internal and backend errors. When you have one, quote it to
  support: it makes diagnosis much faster.

## Where next

- [README](README.md) for the full feature tour
- [Per-operation reference](docs/reference/)
- [API documentation](https://flat.io/developers/docs/api/)
