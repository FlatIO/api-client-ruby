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
  # Public User details
  class UserPublic
    # The user unique identifier
    attr_accessor :id

    # The type of user account
    attr_accessor :type

    attr_accessor :product

    # The user name (unique for the organization)
    attr_accessor :username

    # The name that can be directly printed (name, firstname & lastname, or username)
    attr_accessor :printable_name

    # Firstname of the user (for education users)
    attr_accessor :firstname

    # Lastname of the user (for education users)
    attr_accessor :lastname

    # A displayable name for the user (for consumer users)
    attr_accessor :name

    # The URL of the picture to display
    attr_accessor :picture

    # List of badges for the user profile:  - `power` - `staff` - `composerOfTheMonth` - `ambassador` - `challenge` 
    attr_accessor :badges

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

    # Cover picture (backgroud) for the profile
    attr_accessor :cover_picture

    # Theme (background) for the profile
    attr_accessor :profile_theme

    # An array of the instrument identifiers. The format of the strings is `{instrument-group}.{instrument-id}`. 
    attr_accessor :instruments

    attr_accessor :links

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
        :'type' => :'type',
        :'product' => :'product',
        :'username' => :'username',
        :'printable_name' => :'printableName',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'name' => :'name',
        :'picture' => :'picture',
        :'badges' => :'badges',
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
        :'cover_picture' => :'coverPicture',
        :'profile_theme' => :'profileTheme',
        :'instruments' => :'instruments',
        :'links' => :'links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'type' => :'String',
        :'product' => :'TutteoProduct',
        :'username' => :'String',
        :'printable_name' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'name' => :'String',
        :'picture' => :'String',
        :'badges' => :'Array<String>',
        :'organization' => :'String',
        :'organization_role' => :'OrganizationRoles',
        :'class_role' => :'ClassRoles',
        :'html_url' => :'String',
        :'bio' => :'String',
        :'registration_date' => :'Time',
        :'liked_scores_count' => :'Integer',
        :'followers_count' => :'Integer',
        :'following_count' => :'Integer',
        :'owned_public_scores_count' => :'Integer',
        :'cover_picture' => :'String',
        :'profile_theme' => :'String',
        :'instruments' => :'Array<String>',
        :'links' => :'UserCommunityProfileLinks'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'picture',
        :'cover_picture',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'UserPublicSummary'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `FlatApi::UserPublic` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `FlatApi::UserPublic`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      else
        self.product = 'flat'
      end

      if attributes.key?(:'username')
        self.username = attributes[:'username']
      else
        self.username = nil
      end

      if attributes.key?(:'printable_name')
        self.printable_name = attributes[:'printable_name']
      end

      if attributes.key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'picture')
        self.picture = attributes[:'picture']
      else
        self.picture = nil
      end

      if attributes.key?(:'badges')
        if (value = attributes[:'badges']).is_a?(Array)
          self.badges = value
        end
      end

      if attributes.key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.key?(:'organization_role')
        self.organization_role = attributes[:'organization_role']
      end

      if attributes.key?(:'class_role')
        self.class_role = attributes[:'class_role']
      end

      if attributes.key?(:'html_url')
        self.html_url = attributes[:'html_url']
      end

      if attributes.key?(:'bio')
        self.bio = attributes[:'bio']
      end

      if attributes.key?(:'registration_date')
        self.registration_date = attributes[:'registration_date']
      end

      if attributes.key?(:'liked_scores_count')
        self.liked_scores_count = attributes[:'liked_scores_count']
      end

      if attributes.key?(:'followers_count')
        self.followers_count = attributes[:'followers_count']
      end

      if attributes.key?(:'following_count')
        self.following_count = attributes[:'following_count']
      end

      if attributes.key?(:'owned_public_scores_count')
        self.owned_public_scores_count = attributes[:'owned_public_scores_count']
      end

      if attributes.key?(:'cover_picture')
        self.cover_picture = attributes[:'cover_picture']
      end

      if attributes.key?(:'profile_theme')
        self.profile_theme = attributes[:'profile_theme']
      end

      if attributes.key?(:'instruments')
        if (value = attributes[:'instruments']).is_a?(Array)
          self.instruments = value
        end
      end

      if attributes.key?(:'links')
        self.links = attributes[:'links']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @product.nil?
        invalid_properties.push('invalid value for "product", product cannot be nil.')
      end

      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["user", "guest"])
      return false unless type_validator.valid?(@type)
      return false if @product.nil?
      return false if @username.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["user", "guest"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          type == o.type &&
          product == o.product &&
          username == o.username &&
          printable_name == o.printable_name &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          name == o.name &&
          picture == o.picture &&
          badges == o.badges &&
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
          cover_picture == o.cover_picture &&
          profile_theme == o.profile_theme &&
          instruments == o.instruments &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, type, product, username, printable_name, firstname, lastname, name, picture, badges, organization, organization_role, class_role, html_url, bio, registration_date, liked_scores_count, followers_count, following_count, owned_public_scores_count, cover_picture, profile_theme, instruments, links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = FlatApi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
