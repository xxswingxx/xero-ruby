=begin
#Xero Payroll AU

#This is the Xero Payroll API for orgs in Australia region.

The version of the OpenAPI document: 2.4.0
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  require 'bigdecimal'

  class PayRun
    # Xero identifier for pay run
    attr_accessor :payroll_calendar_id
    
    # Xero identifier for pay run
    attr_accessor :pay_run_id
    
    # Period Start Date for the PayRun (YYYY-MM-DD)
    attr_accessor :pay_run_period_start_date
    
    # Period End Date for the PayRun (YYYY-MM-DD)
    attr_accessor :pay_run_period_end_date
    

    attr_accessor :pay_run_status
    
    # Payment Date for the PayRun (YYYY-MM-DD)
    attr_accessor :payment_date
    
    # Payslip message for the PayRun
    attr_accessor :payslip_message
    
    # Last modified timestamp
    attr_accessor :updated_date_utc
    
    # The payslips in the payrun
    attr_accessor :payslips
    
    # The total Wages for the Payrun
    attr_accessor :wages
    
    # The total Deductions for the Payrun
    attr_accessor :deductions
    
    # The total Tax for the Payrun
    attr_accessor :tax
    
    # The total Super for the Payrun
    attr_accessor :_super
    
    # The total Reimbursements for the Payrun
    attr_accessor :reimbursement
    
    # The total NetPay for the Payrun
    attr_accessor :net_pay
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payroll_calendar_id' => :'PayrollCalendarID',
        :'pay_run_id' => :'PayRunID',
        :'pay_run_period_start_date' => :'PayRunPeriodStartDate',
        :'pay_run_period_end_date' => :'PayRunPeriodEndDate',
        :'pay_run_status' => :'PayRunStatus',
        :'payment_date' => :'PaymentDate',
        :'payslip_message' => :'PayslipMessage',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'payslips' => :'Payslips',
        :'wages' => :'Wages',
        :'deductions' => :'Deductions',
        :'tax' => :'Tax',
        :'_super' => :'Super',
        :'reimbursement' => :'Reimbursement',
        :'net_pay' => :'NetPay',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payroll_calendar_id' => :'String',
        :'pay_run_id' => :'String',
        :'pay_run_period_start_date' => :'Date',
        :'pay_run_period_end_date' => :'Date',
        :'pay_run_status' => :'PayRunStatus',
        :'payment_date' => :'Date',
        :'payslip_message' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'payslips' => :'Array<PayslipSummary>',
        :'wages' => :'BigDecimal',
        :'deductions' => :'BigDecimal',
        :'tax' => :'BigDecimal',
        :'_super' => :'BigDecimal',
        :'reimbursement' => :'BigDecimal',
        :'net_pay' => :'BigDecimal',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::PayRun` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::PayRun`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payroll_calendar_id')
        self.payroll_calendar_id = attributes[:'payroll_calendar_id']
      end

      if attributes.key?(:'pay_run_id')
        self.pay_run_id = attributes[:'pay_run_id']
      end

      if attributes.key?(:'pay_run_period_start_date')
        self.pay_run_period_start_date = attributes[:'pay_run_period_start_date']
      end

      if attributes.key?(:'pay_run_period_end_date')
        self.pay_run_period_end_date = attributes[:'pay_run_period_end_date']
      end

      if attributes.key?(:'pay_run_status')
        self.pay_run_status = attributes[:'pay_run_status']
      end

      if attributes.key?(:'payment_date')
        self.payment_date = attributes[:'payment_date']
      end

      if attributes.key?(:'payslip_message')
        self.payslip_message = attributes[:'payslip_message']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'payslips')
        if (value = attributes[:'payslips']).is_a?(Array)
          self.payslips = value
        end
      end

      if attributes.key?(:'wages')
        self.wages = attributes[:'wages']
      end

      if attributes.key?(:'deductions')
        self.deductions = attributes[:'deductions']
      end

      if attributes.key?(:'tax')
        self.tax = attributes[:'tax']
      end

      if attributes.key?(:'_super')
        self._super = attributes[:'_super']
      end

      if attributes.key?(:'reimbursement')
        self.reimbursement = attributes[:'reimbursement']
      end

      if attributes.key?(:'net_pay')
        self.net_pay = attributes[:'net_pay']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payroll_calendar_id.nil?
        invalid_properties.push('invalid value for "payroll_calendar_id", payroll_calendar_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payroll_calendar_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payroll_calendar_id == o.payroll_calendar_id &&
          pay_run_id == o.pay_run_id &&
          pay_run_period_start_date == o.pay_run_period_start_date &&
          pay_run_period_end_date == o.pay_run_period_end_date &&
          pay_run_status == o.pay_run_status &&
          payment_date == o.payment_date &&
          payslip_message == o.payslip_message &&
          updated_date_utc == o.updated_date_utc &&
          payslips == o.payslips &&
          wages == o.wages &&
          deductions == o.deductions &&
          tax == o.tax &&
          _super == o._super &&
          reimbursement == o.reimbursement &&
          net_pay == o.net_pay &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payroll_calendar_id, pay_run_id, pay_run_period_start_date, pay_run_period_end_date, pay_run_status, payment_date, payslip_message, updated_date_utc, payslips, wages, deductions, tax, _super, reimbursement, net_pay, validation_errors].hash
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
        XeroRuby::PayrollAu.const_get(type).build_from_hash(value)
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