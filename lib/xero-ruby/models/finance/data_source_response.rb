=begin
#Xero Finance API

#The Finance API is a collection of endpoints which customers can use in the course of a loan application, which may assist lenders to gain the confidence they need to provide capital.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Finance
  require 'bigdecimal'

  class DataSourceResponse
    # Sum of the amounts of all statement lines where the source of the data was a direct bank feed in to Xero.   This gives an indication on the certainty of correctness of the data.
    attr_accessor :direct_bank_feed
    
    # Sum of the amounts of all statement lines where the source of the data was a indirect bank feed to Xero (usually via Yodlee).   This gives an indication on the certainty of correctness of the data.
    attr_accessor :indirect_bank_feed
    
    # Sum of the amounts of all statement lines where the source of the data was a CSV file upload in to Xero.   This gives an indication on the certainty of correctness of the data.
    attr_accessor :file_upload
    
    # Sum of the amounts of all statement lines where the source of the data was manually keyed in to Xero.   This gives an indication on the certainty of correctness of the data.
    attr_accessor :manual
    
    # Sum of the amounts of all statement lines where the source of the data was a direct bank feed in to Xero.  This gives an indication on the certainty of correctness of the data.  Only positive transactions are included.
    attr_accessor :direct_bank_feed_pos
    
    # Sum of the amounts of all statement lines where the source of the data was a indirect bank feed to Xero (usually via Yodlee).   This gives an indication on the certainty of correctness of the data. Only positive transactions are included.
    attr_accessor :indirect_bank_feed_pos
    
    # Sum of the amounts of all statement lines where the source of the data was a CSV file upload in to Xero.   This gives an indication on the certainty of correctness of the data. Only positive transactions are included.
    attr_accessor :file_upload_pos
    
    # Sum of the amounts of all statement lines where the source of the data was manually keyed in to Xero.   This gives an indication on the certainty of correctness of the data. Only positive transactions are included.
    attr_accessor :manual_pos
    
    # Sum of the amounts of all statement lines where the source of the data was a direct bank feed in to Xero.   This gives an indication on the certainty of correctness of the data.  Only negative transactions are included.
    attr_accessor :direct_bank_feed_neg
    
    # Sum of the amounts of all statement lines where the source of the data was a indirect bank feed to Xero (usually via Yodlee).   This gives an indication on the certainty of correctness of the data.  Only negative transactions are included.
    attr_accessor :indirect_bank_feed_neg
    
    # Sum of the amounts of all statement lines where the source of the data was a CSV file upload in to Xero.   This gives an indication on the certainty of correctness of the data.  Only negative transactions are included.
    attr_accessor :file_upload_neg
    
    # Sum of the amounts of all statement lines where the source of the data was manually keyed in to Xero.   This gives an indication on the certainty of correctness of the data.  Only negative transactions are included.
    attr_accessor :manual_neg
    
    # Sum of the amounts of all statement lines where the source of the data was any other category.   This gives an indication on the certainty of correctness of the data.  Only positive transactions are included.
    attr_accessor :other_pos
    
    # Sum of the amounts of all statement lines where the source of the data was any other category.   This gives an indication on the certainty of correctness of the data.  Only negative transactions are included.
    attr_accessor :other_neg
    
    # Sum of the amounts of all statement lines where the source of the data was any other category.   This gives an indication on the certainty of correctness of the data.
    attr_accessor :other
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'direct_bank_feed' => :'directBankFeed',
        :'indirect_bank_feed' => :'indirectBankFeed',
        :'file_upload' => :'fileUpload',
        :'manual' => :'manual',
        :'direct_bank_feed_pos' => :'directBankFeedPos',
        :'indirect_bank_feed_pos' => :'indirectBankFeedPos',
        :'file_upload_pos' => :'fileUploadPos',
        :'manual_pos' => :'manualPos',
        :'direct_bank_feed_neg' => :'directBankFeedNeg',
        :'indirect_bank_feed_neg' => :'indirectBankFeedNeg',
        :'file_upload_neg' => :'fileUploadNeg',
        :'manual_neg' => :'manualNeg',
        :'other_pos' => :'otherPos',
        :'other_neg' => :'otherNeg',
        :'other' => :'other'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'direct_bank_feed' => :'BigDecimal',
        :'indirect_bank_feed' => :'BigDecimal',
        :'file_upload' => :'BigDecimal',
        :'manual' => :'BigDecimal',
        :'direct_bank_feed_pos' => :'BigDecimal',
        :'indirect_bank_feed_pos' => :'BigDecimal',
        :'file_upload_pos' => :'BigDecimal',
        :'manual_pos' => :'BigDecimal',
        :'direct_bank_feed_neg' => :'BigDecimal',
        :'indirect_bank_feed_neg' => :'BigDecimal',
        :'file_upload_neg' => :'BigDecimal',
        :'manual_neg' => :'BigDecimal',
        :'other_pos' => :'BigDecimal',
        :'other_neg' => :'BigDecimal',
        :'other' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Finance::DataSourceResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Finance::DataSourceResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'direct_bank_feed')
        self.direct_bank_feed = attributes[:'direct_bank_feed']
      end

      if attributes.key?(:'indirect_bank_feed')
        self.indirect_bank_feed = attributes[:'indirect_bank_feed']
      end

      if attributes.key?(:'file_upload')
        self.file_upload = attributes[:'file_upload']
      end

      if attributes.key?(:'manual')
        self.manual = attributes[:'manual']
      end

      if attributes.key?(:'direct_bank_feed_pos')
        self.direct_bank_feed_pos = attributes[:'direct_bank_feed_pos']
      end

      if attributes.key?(:'indirect_bank_feed_pos')
        self.indirect_bank_feed_pos = attributes[:'indirect_bank_feed_pos']
      end

      if attributes.key?(:'file_upload_pos')
        self.file_upload_pos = attributes[:'file_upload_pos']
      end

      if attributes.key?(:'manual_pos')
        self.manual_pos = attributes[:'manual_pos']
      end

      if attributes.key?(:'direct_bank_feed_neg')
        self.direct_bank_feed_neg = attributes[:'direct_bank_feed_neg']
      end

      if attributes.key?(:'indirect_bank_feed_neg')
        self.indirect_bank_feed_neg = attributes[:'indirect_bank_feed_neg']
      end

      if attributes.key?(:'file_upload_neg')
        self.file_upload_neg = attributes[:'file_upload_neg']
      end

      if attributes.key?(:'manual_neg')
        self.manual_neg = attributes[:'manual_neg']
      end

      if attributes.key?(:'other_pos')
        self.other_pos = attributes[:'other_pos']
      end

      if attributes.key?(:'other_neg')
        self.other_neg = attributes[:'other_neg']
      end

      if attributes.key?(:'other')
        self.other = attributes[:'other']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          direct_bank_feed == o.direct_bank_feed &&
          indirect_bank_feed == o.indirect_bank_feed &&
          file_upload == o.file_upload &&
          manual == o.manual &&
          direct_bank_feed_pos == o.direct_bank_feed_pos &&
          indirect_bank_feed_pos == o.indirect_bank_feed_pos &&
          file_upload_pos == o.file_upload_pos &&
          manual_pos == o.manual_pos &&
          direct_bank_feed_neg == o.direct_bank_feed_neg &&
          indirect_bank_feed_neg == o.indirect_bank_feed_neg &&
          file_upload_neg == o.file_upload_neg &&
          manual_neg == o.manual_neg &&
          other_pos == o.other_pos &&
          other_neg == o.other_neg &&
          other == o.other
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [direct_bank_feed, indirect_bank_feed, file_upload, manual, direct_bank_feed_pos, indirect_bank_feed_pos, file_upload_pos, manual_pos, direct_bank_feed_neg, indirect_bank_feed_neg, file_upload_neg, manual_neg, other_pos, other_neg, other].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
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
        XeroRuby::Finance.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end