=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML, MIDI, Guitar Pro (GP3, GP4, GP5, GPX, GP), PowerTab, TuxGuitar and MuseScore files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and introduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

The version of the OpenAPI document: 2.20.0
Contact: developers@flat.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module FlatApi
  module EduResourceResource
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'Assignment',
          :'EduResourceFolder'
        ]
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        # Go through the list of oneOf items and attempt to identify the appropriate one.
        # Note:
        # - We do not attempt to check whether exactly one item matches.
        # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
        #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
        # - TODO: scalar values are de facto behaving as if they were nullable.
        # - TODO: logging when debugging is set.
        openapi_one_of.each do |klass|
          begin
            next if klass == :AnyType # "nullable: true"
            typed_data = find_and_cast_into_type(klass, data)
            return typed_data if typed_data
          rescue # rescue all errors so we keep iterating even if the current item lookup raises
          end
        end

        openapi_one_of.include?(:AnyType) ? data : nil
      end

      private

      SchemaMismatchError = Class.new(StandardError)

      # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
      def find_and_cast_into_type(klass, data)
        return if data.nil?

        case klass.to_s
        when 'Boolean'
          return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
        when 'Float'
          return data if data.instance_of?(Float)
        when 'Integer'
          return data if data.instance_of?(Integer)
        when 'Time'
          return Time.parse(data)
        when 'Date'
          return Date.parse(data)
        when 'String'
          return data if data.instance_of?(String)
        when 'Object' # "type: object"
          return data if data.instance_of?(Hash)
        when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
          if data.instance_of?(Array)
            sub_type = Regexp.last_match[:sub_type]
            return data.map { |item| find_and_cast_into_type(sub_type, item) }
          end
        when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
          if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
            sub_type = Regexp.last_match[:sub_type]
            return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
          end
        else # model
          const = FlatApi.const_get(klass)
          if const
            if const.respond_to?(:openapi_one_of) # nested oneOf model
              model = const.build(data)
              return model if model
            else
              # raise if data contains keys that are not known to the model
              raise if const.respond_to?(:acceptable_attributes) && !(data.keys - const.acceptable_attributes).empty?
              model = const.build_from_hash(data)
              return model if model
            end
          end
        end

        raise # if no match by now, raise
      rescue
        raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
      end
    end
  end

end