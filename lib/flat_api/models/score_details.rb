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
  # The score and all its details
  class ScoreDetails
    # The unique identifier of the score
    attr_accessor :id

    # The private sharing key of the score (available when the `privacy` mode is set to `privateLink`)
    attr_accessor :sharing_key

    # The title of the score
    attr_accessor :title

    attr_accessor :privacy

    attr_accessor :user

    # The url where the score can be viewed in a web browser
    attr_accessor :html_url

    # Subtitle of the score
    attr_accessor :subtitle

    # Lyricist of the score
    attr_accessor :lyricist

    # Composer of the score
    attr_accessor :composer

    # Description of the creation
    attr_accessor :description

    # Tags describing the score
    attr_accessor :tags

    attr_accessor :creation_type

    attr_accessor :license

    # Additional license text written on the exported/printed score
    attr_accessor :license_text

    # In seconds, an approximative duration of the score
    attr_accessor :duration_time

    # The number of measures in the score
    attr_accessor :number_measures

    # The main tempo of the score (in QPM)
    attr_accessor :main_tempo_qpm

    attr_accessor :rights

    # The list of the collaborators of the score
    attr_accessor :collaborators

    # The date when the score was created
    attr_accessor :creation_date

    # The date of the last revision of the score
    attr_accessor :modification_date

    # The date when the score was published on Flat
    attr_accessor :publication_date

    # If the score has been created in an organization, the identifier of this organization. This property is especially used with the score privacy `organizationPublic`. 
    attr_accessor :organization

    # If the score has been forked, the unique identifier of the parent score. 
    attr_accessor :parent_score

    # An array of the instrument identifiers used in the last version of the score. This is mainly used to display a list of the instruments in the Flat's UI or instruments icons. The format of the strings is `{instrument-group}.{instrument-id}`. 
    attr_accessor :instruments

    # If the user uses Google Drive and the score exists on Google Drive, this field will contain the unique identifier of the Flat score on Google Drive. You can access the document using the url: `https://drive.google.com/open?id={googleDriveFileId}` 
    attr_accessor :google_drive_file_id

    attr_accessor :likes

    attr_accessor :comments

    attr_accessor :views


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'sharing_key' => :'sharingKey',
        :'title' => :'title',
        :'privacy' => :'privacy',
        :'user' => :'user',
        :'html_url' => :'htmlUrl',
        :'subtitle' => :'subtitle',
        :'lyricist' => :'lyricist',
        :'composer' => :'composer',
        :'description' => :'description',
        :'tags' => :'tags',
        :'creation_type' => :'creationType',
        :'license' => :'license',
        :'license_text' => :'licenseText',
        :'duration_time' => :'durationTime',
        :'number_measures' => :'numberMeasures',
        :'main_tempo_qpm' => :'mainTempoQpm',
        :'rights' => :'rights',
        :'collaborators' => :'collaborators',
        :'creation_date' => :'creationDate',
        :'modification_date' => :'modificationDate',
        :'publication_date' => :'publicationDate',
        :'organization' => :'organization',
        :'parent_score' => :'parentScore',
        :'instruments' => :'instruments',
        :'google_drive_file_id' => :'googleDriveFileId',
        :'likes' => :'likes',
        :'comments' => :'comments',
        :'views' => :'views'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'sharing_key' => :'String',
        :'title' => :'String',
        :'privacy' => :'ScorePrivacy',
        :'user' => :'UserPublicSummary',
        :'html_url' => :'String',
        :'subtitle' => :'String',
        :'lyricist' => :'String',
        :'composer' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<String>',
        :'creation_type' => :'ScoreCreationType',
        :'license' => :'ScoreLicense',
        :'license_text' => :'String',
        :'duration_time' => :'Integer',
        :'number_measures' => :'Integer',
        :'main_tempo_qpm' => :'Integer',
        :'rights' => :'ScoreRights',
        :'collaborators' => :'Array<ScoreCollaborator>',
        :'creation_date' => :'DateTime',
        :'modification_date' => :'DateTime',
        :'publication_date' => :'DateTime',
        :'organization' => :'String',
        :'parent_score' => :'String',
        :'instruments' => :'Array<String>',
        :'google_drive_file_id' => :'String',
        :'likes' => :'ScoreLikesCounts',
        :'comments' => :'ScoreCommentsCounts',
        :'views' => :'ScoreViewsCounts'
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

      if attributes.has_key?(:'sharingKey')
        self.sharing_key = attributes[:'sharingKey']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'privacy')
        self.privacy = attributes[:'privacy']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'htmlUrl')
        self.html_url = attributes[:'htmlUrl']
      end

      if attributes.has_key?(:'subtitle')
        self.subtitle = attributes[:'subtitle']
      end

      if attributes.has_key?(:'lyricist')
        self.lyricist = attributes[:'lyricist']
      end

      if attributes.has_key?(:'composer')
        self.composer = attributes[:'composer']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'creationType')
        self.creation_type = attributes[:'creationType']
      end

      if attributes.has_key?(:'license')
        self.license = attributes[:'license']
      end

      if attributes.has_key?(:'licenseText')
        self.license_text = attributes[:'licenseText']
      end

      if attributes.has_key?(:'durationTime')
        self.duration_time = attributes[:'durationTime']
      end

      if attributes.has_key?(:'numberMeasures')
        self.number_measures = attributes[:'numberMeasures']
      end

      if attributes.has_key?(:'mainTempoQpm')
        self.main_tempo_qpm = attributes[:'mainTempoQpm']
      end

      if attributes.has_key?(:'rights')
        self.rights = attributes[:'rights']
      end

      if attributes.has_key?(:'collaborators')
        if (value = attributes[:'collaborators']).is_a?(Array)
          self.collaborators = value
        end
      end

      if attributes.has_key?(:'creationDate')
        self.creation_date = attributes[:'creationDate']
      end

      if attributes.has_key?(:'modificationDate')
        self.modification_date = attributes[:'modificationDate']
      end

      if attributes.has_key?(:'publicationDate')
        self.publication_date = attributes[:'publicationDate']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'parentScore')
        self.parent_score = attributes[:'parentScore']
      end

      if attributes.has_key?(:'instruments')
        if (value = attributes[:'instruments']).is_a?(Array)
          self.instruments = value
        end
      end

      if attributes.has_key?(:'googleDriveFileId')
        self.google_drive_file_id = attributes[:'googleDriveFileId']
      end

      if attributes.has_key?(:'likes')
        self.likes = attributes[:'likes']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.has_key?(:'views')
        self.views = attributes[:'views']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          sharing_key == o.sharing_key &&
          title == o.title &&
          privacy == o.privacy &&
          user == o.user &&
          html_url == o.html_url &&
          subtitle == o.subtitle &&
          lyricist == o.lyricist &&
          composer == o.composer &&
          description == o.description &&
          tags == o.tags &&
          creation_type == o.creation_type &&
          license == o.license &&
          license_text == o.license_text &&
          duration_time == o.duration_time &&
          number_measures == o.number_measures &&
          main_tempo_qpm == o.main_tempo_qpm &&
          rights == o.rights &&
          collaborators == o.collaborators &&
          creation_date == o.creation_date &&
          modification_date == o.modification_date &&
          publication_date == o.publication_date &&
          organization == o.organization &&
          parent_score == o.parent_score &&
          instruments == o.instruments &&
          google_drive_file_id == o.google_drive_file_id &&
          likes == o.likes &&
          comments == o.comments &&
          views == o.views
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, sharing_key, title, privacy, user, html_url, subtitle, lyricist, composer, description, tags, creation_type, license, license_text, duration_time, number_measures, main_tempo_qpm, rights, collaborators, creation_date, modification_date, publication_date, organization, parent_score, instruments, google_drive_file_id, likes, comments, views].hash
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
