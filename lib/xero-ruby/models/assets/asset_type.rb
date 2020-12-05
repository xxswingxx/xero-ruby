=begin
#Xero Assets API

#This is the Xero Assets API

The version of the OpenAPI document: 2.6.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Assets
  require 'bigdecimal'

  class AssetType
    # Xero generated unique identifier for asset types
    attr_accessor :asset_type_id
    
    # The name of the asset type
    attr_accessor :asset_type_name
    
    # The asset account for fixed assets of this type
    attr_accessor :fixed_asset_account_id
    
    # The expense account for the depreciation of fixed assets of this type
    attr_accessor :depreciation_expense_account_id
    
    # The account for accumulated depreciation of fixed assets of this type
    attr_accessor :accumulated_depreciation_account_id
    

    attr_accessor :book_depreciation_setting
    
    # All asset types that have accumulated depreciation for any assets that use them are deemed ‘locked’ and cannot be removed.
    attr_accessor :locks
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'asset_type_id' => :'assetTypeId',
        :'asset_type_name' => :'assetTypeName',
        :'fixed_asset_account_id' => :'fixedAssetAccountId',
        :'depreciation_expense_account_id' => :'depreciationExpenseAccountId',
        :'accumulated_depreciation_account_id' => :'accumulatedDepreciationAccountId',
        :'book_depreciation_setting' => :'bookDepreciationSetting',
        :'locks' => :'locks'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asset_type_id' => :'String',
        :'asset_type_name' => :'String',
        :'fixed_asset_account_id' => :'String',
        :'depreciation_expense_account_id' => :'String',
        :'accumulated_depreciation_account_id' => :'String',
        :'book_depreciation_setting' => :'BookDepreciationSetting',
        :'locks' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Assets::AssetType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Assets::AssetType`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asset_type_id')
        self.asset_type_id = attributes[:'asset_type_id']
      end

      if attributes.key?(:'asset_type_name')
        self.asset_type_name = attributes[:'asset_type_name']
      end

      if attributes.key?(:'fixed_asset_account_id')
        self.fixed_asset_account_id = attributes[:'fixed_asset_account_id']
      end

      if attributes.key?(:'depreciation_expense_account_id')
        self.depreciation_expense_account_id = attributes[:'depreciation_expense_account_id']
      end

      if attributes.key?(:'accumulated_depreciation_account_id')
        self.accumulated_depreciation_account_id = attributes[:'accumulated_depreciation_account_id']
      end

      if attributes.key?(:'book_depreciation_setting')
        self.book_depreciation_setting = attributes[:'book_depreciation_setting']
      end

      if attributes.key?(:'locks')
        self.locks = attributes[:'locks']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @asset_type_name.nil?
        invalid_properties.push('invalid value for "asset_type_name", asset_type_name cannot be nil.')
      end

      if @book_depreciation_setting.nil?
        invalid_properties.push('invalid value for "book_depreciation_setting", book_depreciation_setting cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @asset_type_name.nil?
      return false if @book_depreciation_setting.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asset_type_id == o.asset_type_id &&
          asset_type_name == o.asset_type_name &&
          fixed_asset_account_id == o.fixed_asset_account_id &&
          depreciation_expense_account_id == o.depreciation_expense_account_id &&
          accumulated_depreciation_account_id == o.accumulated_depreciation_account_id &&
          book_depreciation_setting == o.book_depreciation_setting &&
          locks == o.locks
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asset_type_id, asset_type_name, fixed_asset_account_id, depreciation_expense_account_id, accumulated_depreciation_account_id, book_depreciation_setting, locks].hash
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
        XeroRuby::Assets.const_get(type).build_from_hash(value)
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end
