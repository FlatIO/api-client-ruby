# frozen_string_literal: true

# Cursor pagination for the Flat API.
#
# Eight operations at v2.25.0 are cursor-paginated, identified by a +next+ query parameter. That
# parameter is a shared component (#/components/parameters/next): any tool that reads an
# operation's parameters without resolving $ref under-counts them and ships collections that
# silently truncate.
#
# The cursor is not in the response body. It arrives in the Link header, which the specification
# does not declare, so it is parsed at runtime.
require 'uri'

module FlatApi
  module Pagination
    LINK = /<([^>]+)>\s*;\s*rel="([^"]+)"/.freeze

    module_function

    # Parse an RFC 5988 Link header into { rel => url }.
    def parse_link_header(value)
      return {} if value.nil? || value.empty?

      value.scan(LINK).to_h { |url, rel| [rel, url] }
    end

    # Extract the opaque +next+ cursor from a response's Link header, if any.
    #
    # Decoded, not captured raw. The cursor arrives percent-encoded inside the Link header's
    # URL, and the client encodes whatever it is given when building the next request, so
    # passing the encoded form through sends it encoded twice and the server rejects the very
    # cursor it issued. URI.decode_www_form applies the rules the server used to write it, so
    # an opaque value round-trips exactly.
    def next_cursor(headers)
      return nil if headers.nil?

      _, link = headers.find { |k, _| k.to_s.downcase == 'link' }
      url = parse_link_header(link)['next']
      return nil if url.nil?

      query = begin
        URI.parse(url).query
      rescue URI::InvalidURIError
        nil
      end
      return nil if query.nil? || query.empty?

      URI.decode_www_form(query).assoc('next')&.last
    end

    # Every item across all pages of a cursor-paginated operation, as a lazy Enumerator.
    #
    # +fetch_page+ is called with a params hash and must return [data, status, headers], which is
    # exactly what the generated *_with_http_info methods return. The cursor lives in the headers.
    #
    # A token expiring mid-traversal is refreshed by the client and the traversal resumes from the
    # same cursor, so no page is skipped or repeated.
    #
    #   FlatApi::Pagination.paginate(user: 'me') do |params|
    #     api.get_user_scores_with_http_info('me', params)
    #   end.each { |score| puts score.title }
    def paginate(**params, &fetch_page)
      raise ArgumentError, 'paginate requires a block that fetches one page' unless fetch_page

      Enumerator.new do |yielder|
        # +_next+, not +next+. `next` is a Ruby keyword, so the generator names the option
        # +:_next+ and maps it back to the +next+ query parameter itself. Passing +:next+ here
        # sends nothing: every iteration refetches page one, the loop guard below sees a cursor it
        # has already used, and the traversal stops after the first page while looking successful.
        cursor = params.delete(:_next) || params.delete(:next)
        seen = {}

        loop do
          page_params = cursor ? params.merge(_next: cursor) : params
          data, _status, headers = fetch_page.call(page_params)
          Array(data).each { |item| yielder << item }

          cursor = next_cursor(headers)
          break if cursor.nil?
          # A server that returns a cursor it already gave us would loop forever.
          break if seen[cursor]

          seen[cursor] = true
        end
      end
    end
  end
end
