=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML or MIDI files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and interoduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

OpenAPI spec version: 2.5.2
Contact: developers@flat.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module FlatApi
  # The context of the comment (for inline/contextualized comments). A context will include all the information related to the location of the comment (i.e. score parts, range of measure, time position). 
  class ScoreCommentContext
    # The unique identifier (UUID) of the score part
    attr_accessor :part_uuid

    # The identififer of the staff
    attr_accessor :staff_idx

    # The list of measure UUIds
    attr_accessor :measure_uuids

    attr_accessor :start_time_pos

    attr_accessor :stop_time_pos

    attr_accessor :start_dpq

    attr_accessor :stop_dpq


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'part_uuid' => :'partUuid',
        :'staff_idx' => :'staffIdx',
        :'measure_uuids' => :'measureUuids',
        :'start_time_pos' => :'startTimePos',
        :'stop_time_pos' => :'stopTimePos',
        :'start_dpq' => :'startDpq',
        :'stop_dpq' => :'stopDpq'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'part_uuid' => :'String',
        :'staff_idx' => :'Float',
        :'measure_uuids' => :'Array<String>',
        :'start_time_pos' => :'Float',
        :'stop_time_pos' => :'Float',
        :'start_dpq' => :'Float',
        :'stop_dpq' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'partUuid')
        self.part_uuid = attributes[:'partUuid']
      end

      if attributes.has_key?(:'staffIdx')
        self.staff_idx = attributes[:'staffIdx']
      end

      if attributes.has_key?(:'measureUuids')
        if (value = attributes[:'measureUuids']).is_a?(Array)
          self.measure_uuids = value
        end
      end

      if attributes.has_key?(:'startTimePos')
        self.start_time_pos = attributes[:'startTimePos']
      end

      if attributes.has_key?(:'stopTimePos')
        self.stop_time_pos = attributes[:'stopTimePos']
      end

      if attributes.has_key?(:'startDpq')
        self.start_dpq = attributes[:'startDpq']
      end

      if attributes.has_key?(:'stopDpq')
        self.stop_dpq = attributes[:'stopDpq']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @part_uuid.nil?
        invalid_properties.push("invalid value for 'part_uuid', part_uuid cannot be nil.")
      end

      if @staff_idx.nil?
        invalid_properties.push("invalid value for 'staff_idx', staff_idx cannot be nil.")
      end

      if @measure_uuids.nil?
        invalid_properties.push("invalid value for 'measure_uuids', measure_uuids cannot be nil.")
      end

      if @start_time_pos.nil?
        invalid_properties.push("invalid value for 'start_time_pos', start_time_pos cannot be nil.")
      end

      if @stop_time_pos.nil?
        invalid_properties.push("invalid value for 'stop_time_pos', stop_time_pos cannot be nil.")
      end

      if @start_dpq.nil?
        invalid_properties.push("invalid value for 'start_dpq', start_dpq cannot be nil.")
      end

      if @stop_dpq.nil?
        invalid_properties.push("invalid value for 'stop_dpq', stop_dpq cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @part_uuid.nil?
      return false if @staff_idx.nil?
      return false if @measure_uuids.nil?
      return false if @start_time_pos.nil?
      return false if @stop_time_pos.nil?
      return false if @start_dpq.nil?
      return false if @stop_dpq.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          part_uuid == o.part_uuid &&
          staff_idx == o.staff_idx &&
          measure_uuids == o.measure_uuids &&
          start_time_pos == o.start_time_pos &&
          stop_time_pos == o.stop_time_pos &&
          start_dpq == o.start_dpq &&
          stop_dpq == o.stop_dpq
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [part_uuid, staff_idx, measure_uuids, start_time_pos, stop_time_pos, start_dpq, stop_dpq].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = FlatApi.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
