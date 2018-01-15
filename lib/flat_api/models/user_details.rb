=begin
#Flat API

#The Flat API allows you to easily extend the abilities of the [Flat Platform](https://flat.io), with a wide range of use cases including the following:  * Creating and importing new music scores using MusicXML or MIDI files * Browsing, updating, copying, exporting the user's scores (for example in MP3, WAV or MIDI) * Managing educational resources with Flat for Education: creating & updating the organization accounts, the classes, rosters and assignments.  The Flat API is built on HTTP. Our API is RESTful It has predictable resource URLs. It returns HTTP response codes to indicate errors. It also accepts and returns JSON in the HTTP body. The [schema](/swagger.yaml) of this API follows the [OpenAPI Initiative (OAI) specification](https://www.openapis.org/), you can use and work with [compatible Swagger tools](http://swagger.io/open-source-integrations/). This API features Cross-Origin Resource Sharing (CORS) implemented in compliance with [W3C spec](https://www.w3.org/TR/cors/).  You can use your favorite HTTP/REST library for your programming language to use Flat's API. This specification and reference is [available on Github](https://github.com/FlatIO/api-reference).  Getting Started and learn more:  * [API Overview and interoduction](https://flat.io/developers/docs/api/) * [Authentication (Personal Access Tokens or OAuth2)](https://flat.io/developers/docs/api/authentication.html) * [SDKs](https://flat.io/developers/docs/api/sdks.html) * [Rate Limits](https://flat.io/developers/docs/api/rate-limits.html) * [Changelog](https://flat.io/developers/docs/api/changelog.html) 

OpenAPI spec version: 2.5.1
Contact: developers@flat.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module FlatApi
  # User details
  class UserDetails
    # Identifier of the user
    attr_accessor :id

    # The user name (unique for the organization)
    attr_accessor :username

    # A displayable name for the user
    attr_accessor :name

    # The name that can be directly printed (name or username)
    attr_accessor :printable_name

    # User pictue
    attr_accessor :picture

    # User license status. 'True' if user is an individual Power user
    attr_accessor :is_power_user

    # Organization ID (for Edu users only)
    attr_accessor :organization

    attr_accessor :organization_role

    attr_accessor :class_role

    # Link to user profile (for Indiv. users only)
    attr_accessor :html_url

    # User's biography
    attr_accessor :bio

    # Date the user signed up
    attr_accessor :registration_date

    # Number of the scores liked by the user
    attr_accessor :liked_scores_count

    # Number of followers the user have
    attr_accessor :followers_count

    # Number of people the user follow
    attr_accessor :following_count

    # Number of public scores the user have
    attr_accessor :owned_public_scores_count

    # Theme (background) for the profile
    attr_accessor :profile_theme

    attr_accessor :instruments

    # The type of account
    attr_accessor :type

    # Tell either this user profile is private or not (individual accounts only)
    attr_accessor :private_profile

    attr_accessor :locale

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'username' => :'username',
        :'name' => :'name',
        :'printable_name' => :'printableName',
        :'picture' => :'picture',
        :'is_power_user' => :'isPowerUser',
        :'organization' => :'organization',
        :'organization_role' => :'organizationRole',
        :'class_role' => :'classRole',
        :'html_url' => :'htmlUrl',
        :'bio' => :'bio',
        :'registration_date' => :'registrationDate',
        :'liked_scores_count' => :'likedScoresCount',
        :'followers_count' => :'followersCount',
        :'following_count' => :'followingCount',
        :'owned_public_scores_count' => :'ownedPublicScoresCount',
        :'profile_theme' => :'profileTheme',
        :'instruments' => :'instruments',
        :'type' => :'type',
        :'private_profile' => :'privateProfile',
        :'locale' => :'locale'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'username' => :'String',
        :'name' => :'String',
        :'printable_name' => :'String',
        :'picture' => :'String',
        :'is_power_user' => :'BOOLEAN',
        :'organization' => :'String',
        :'organization_role' => :'OrganizationRoles',
        :'class_role' => :'ClassRoles',
        :'html_url' => :'String',
        :'bio' => :'String',
        :'registration_date' => :'DateTime',
        :'liked_scores_count' => :'Integer',
        :'followers_count' => :'Integer',
        :'following_count' => :'Integer',
        :'owned_public_scores_count' => :'Integer',
        :'profile_theme' => :'String',
        :'instruments' => :'UserInstruments',
        :'type' => :'String',
        :'private_profile' => :'BOOLEAN',
        :'locale' => :'FlatLocales'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'printableName')
        self.printable_name = attributes[:'printableName']
      end

      if attributes.has_key?(:'picture')
        self.picture = attributes[:'picture']
      end

      if attributes.has_key?(:'isPowerUser')
        self.is_power_user = attributes[:'isPowerUser']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'organizationRole')
        self.organization_role = attributes[:'organizationRole']
      end

      if attributes.has_key?(:'classRole')
        self.class_role = attributes[:'classRole']
      end

      if attributes.has_key?(:'htmlUrl')
        self.html_url = attributes[:'htmlUrl']
      end

      if attributes.has_key?(:'bio')
        self.bio = attributes[:'bio']
      end

      if attributes.has_key?(:'registrationDate')
        self.registration_date = attributes[:'registrationDate']
      end

      if attributes.has_key?(:'likedScoresCount')
        self.liked_scores_count = attributes[:'likedScoresCount']
      end

      if attributes.has_key?(:'followersCount')
        self.followers_count = attributes[:'followersCount']
      end

      if attributes.has_key?(:'followingCount')
        self.following_count = attributes[:'followingCount']
      end

      if attributes.has_key?(:'ownedPublicScoresCount')
        self.owned_public_scores_count = attributes[:'ownedPublicScoresCount']
      end

      if attributes.has_key?(:'profileTheme')
        self.profile_theme = attributes[:'profileTheme']
      end

      if attributes.has_key?(:'instruments')
        self.instruments = attributes[:'instruments']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'privateProfile')
        self.private_profile = attributes[:'privateProfile']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["user", "guest"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["user", "guest"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          username == o.username &&
          name == o.name &&
          printable_name == o.printable_name &&
          picture == o.picture &&
          is_power_user == o.is_power_user &&
          organization == o.organization &&
          organization_role == o.organization_role &&
          class_role == o.class_role &&
          html_url == o.html_url &&
          bio == o.bio &&
          registration_date == o.registration_date &&
          liked_scores_count == o.liked_scores_count &&
          followers_count == o.followers_count &&
          following_count == o.following_count &&
          owned_public_scores_count == o.owned_public_scores_count &&
          profile_theme == o.profile_theme &&
          instruments == o.instruments &&
          type == o.type &&
          private_profile == o.private_profile &&
          locale == o.locale
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, username, name, printable_name, picture, is_power_user, organization, organization_role, class_role, html_url, bio, registration_date, liked_scores_count, followers_count, following_count, owned_public_scores_count, profile_theme, instruments, type, private_profile, locale].hash
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
