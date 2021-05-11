=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  require 'bigdecimal'

  class PaySlip
    # The Xero identifier for a PaySlip
    attr_accessor :pay_slip_id
    
    # The Xero identifier for payroll employee
    attr_accessor :employee_id
    
    # The Xero identifier for the associated payrun
    attr_accessor :pay_run_id
    
    # The date payslip was last updated
    attr_accessor :last_edited
    
    # Employee first name
    attr_accessor :first_name
    
    # Employee last name
    attr_accessor :last_name
    
    # Total earnings before any deductions. Same as gross earnings for NZ.
    attr_accessor :total_earnings
    
    # Total earnings before any deductions. Same as total earnings for NZ.
    attr_accessor :gross_earnings
    
    # The employee net pay
    attr_accessor :total_pay
    
    # The employer's tax obligation
    attr_accessor :total_employer_taxes
    
    # The part of an employee's earnings that is deducted for tax purposes
    attr_accessor :total_employee_taxes
    
    # Total amount subtracted from an employee's earnings to reach total pay
    attr_accessor :total_deductions
    
    # Total reimbursements are nontaxable payments to an employee used to repay out-of-pocket expenses when the person incurs those expenses through employment
    attr_accessor :total_reimbursements
    
    # Total amounts required by law to subtract from the employee's earnings
    attr_accessor :total_statutory_deductions
    
    # Benefits (also called fringe benefits, perquisites or perks) are various non-earnings compensations provided to employees in addition to their normal earnings or salaries
    attr_accessor :total_superannuation
    
    # BACS Service User Number
    attr_accessor :bacs_hash
    
    # The payment method code
    attr_accessor :payment_method
    CHEQUE = "Cheque".freeze
    ELECTRONICALLY = "Electronically".freeze
    MANUAL = "Manual".freeze
    

    attr_accessor :earnings_lines
    

    attr_accessor :leave_earnings_lines
    

    attr_accessor :timesheet_earnings_lines
    

    attr_accessor :deduction_lines
    

    attr_accessor :reimbursement_lines
    

    attr_accessor :leave_accrual_lines
    

    attr_accessor :superannuation_lines
    

    attr_accessor :payment_lines
    

    attr_accessor :employee_tax_lines
    

    attr_accessor :employer_tax_lines
    

    attr_accessor :statutory_deduction_lines
    

    attr_accessor :tax_settings
    

    attr_accessor :gross_earnings_history
    
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
        :'pay_slip_id' => :'paySlipID',
        :'employee_id' => :'employeeID',
        :'pay_run_id' => :'payRunID',
        :'last_edited' => :'lastEdited',
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'total_earnings' => :'totalEarnings',
        :'gross_earnings' => :'grossEarnings',
        :'total_pay' => :'totalPay',
        :'total_employer_taxes' => :'totalEmployerTaxes',
        :'total_employee_taxes' => :'totalEmployeeTaxes',
        :'total_deductions' => :'totalDeductions',
        :'total_reimbursements' => :'totalReimbursements',
        :'total_statutory_deductions' => :'totalStatutoryDeductions',
        :'total_superannuation' => :'totalSuperannuation',
        :'bacs_hash' => :'bacsHash',
        :'payment_method' => :'paymentMethod',
        :'earnings_lines' => :'earningsLines',
        :'leave_earnings_lines' => :'leaveEarningsLines',
        :'timesheet_earnings_lines' => :'timesheetEarningsLines',
        :'deduction_lines' => :'deductionLines',
        :'reimbursement_lines' => :'reimbursementLines',
        :'leave_accrual_lines' => :'leaveAccrualLines',
        :'superannuation_lines' => :'superannuationLines',
        :'payment_lines' => :'paymentLines',
        :'employee_tax_lines' => :'employeeTaxLines',
        :'employer_tax_lines' => :'employerTaxLines',
        :'statutory_deduction_lines' => :'statutoryDeductionLines',
        :'tax_settings' => :'taxSettings',
        :'gross_earnings_history' => :'grossEarningsHistory'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'pay_slip_id' => :'String',
        :'employee_id' => :'String',
        :'pay_run_id' => :'String',
        :'last_edited' => :'Date',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'total_earnings' => :'BigDecimal',
        :'gross_earnings' => :'BigDecimal',
        :'total_pay' => :'BigDecimal',
        :'total_employer_taxes' => :'BigDecimal',
        :'total_employee_taxes' => :'BigDecimal',
        :'total_deductions' => :'BigDecimal',
        :'total_reimbursements' => :'BigDecimal',
        :'total_statutory_deductions' => :'BigDecimal',
        :'total_superannuation' => :'BigDecimal',
        :'bacs_hash' => :'String',
        :'payment_method' => :'String',
        :'earnings_lines' => :'Array<EarningsLine>',
        :'leave_earnings_lines' => :'Array<LeaveEarningsLine>',
        :'timesheet_earnings_lines' => :'Array<TimesheetEarningsLine>',
        :'deduction_lines' => :'Array<DeductionLine>',
        :'reimbursement_lines' => :'Array<ReimbursementLine>',
        :'leave_accrual_lines' => :'Array<LeaveAccrualLine>',
        :'superannuation_lines' => :'Array<SuperannuationLine>',
        :'payment_lines' => :'Array<PaymentLine>',
        :'employee_tax_lines' => :'Array<TaxLine>',
        :'employer_tax_lines' => :'Array<TaxLine>',
        :'statutory_deduction_lines' => :'Array<StatutoryDeductionLine>',
        :'tax_settings' => :'TaxSettings',
        :'gross_earnings_history' => :'GrossEarningsHistory'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollNz::PaySlip` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollNz::PaySlip`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pay_slip_id')
        self.pay_slip_id = attributes[:'pay_slip_id']
      end

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'pay_run_id')
        self.pay_run_id = attributes[:'pay_run_id']
      end

      if attributes.key?(:'last_edited')
        self.last_edited = attributes[:'last_edited']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'total_earnings')
        self.total_earnings = attributes[:'total_earnings']
      end

      if attributes.key?(:'gross_earnings')
        self.gross_earnings = attributes[:'gross_earnings']
      end

      if attributes.key?(:'total_pay')
        self.total_pay = attributes[:'total_pay']
      end

      if attributes.key?(:'total_employer_taxes')
        self.total_employer_taxes = attributes[:'total_employer_taxes']
      end

      if attributes.key?(:'total_employee_taxes')
        self.total_employee_taxes = attributes[:'total_employee_taxes']
      end

      if attributes.key?(:'total_deductions')
        self.total_deductions = attributes[:'total_deductions']
      end

      if attributes.key?(:'total_reimbursements')
        self.total_reimbursements = attributes[:'total_reimbursements']
      end

      if attributes.key?(:'total_statutory_deductions')
        self.total_statutory_deductions = attributes[:'total_statutory_deductions']
      end

      if attributes.key?(:'total_superannuation')
        self.total_superannuation = attributes[:'total_superannuation']
      end

      if attributes.key?(:'bacs_hash')
        self.bacs_hash = attributes[:'bacs_hash']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'earnings_lines')
        if (value = attributes[:'earnings_lines']).is_a?(Array)
          self.earnings_lines = value
        end
      end

      if attributes.key?(:'leave_earnings_lines')
        if (value = attributes[:'leave_earnings_lines']).is_a?(Array)
          self.leave_earnings_lines = value
        end
      end

      if attributes.key?(:'timesheet_earnings_lines')
        if (value = attributes[:'timesheet_earnings_lines']).is_a?(Array)
          self.timesheet_earnings_lines = value
        end
      end

      if attributes.key?(:'deduction_lines')
        if (value = attributes[:'deduction_lines']).is_a?(Array)
          self.deduction_lines = value
        end
      end

      if attributes.key?(:'reimbursement_lines')
        if (value = attributes[:'reimbursement_lines']).is_a?(Array)
          self.reimbursement_lines = value
        end
      end

      if attributes.key?(:'leave_accrual_lines')
        if (value = attributes[:'leave_accrual_lines']).is_a?(Array)
          self.leave_accrual_lines = value
        end
      end

      if attributes.key?(:'superannuation_lines')
        if (value = attributes[:'superannuation_lines']).is_a?(Array)
          self.superannuation_lines = value
        end
      end

      if attributes.key?(:'payment_lines')
        if (value = attributes[:'payment_lines']).is_a?(Array)
          self.payment_lines = value
        end
      end

      if attributes.key?(:'employee_tax_lines')
        if (value = attributes[:'employee_tax_lines']).is_a?(Array)
          self.employee_tax_lines = value
        end
      end

      if attributes.key?(:'employer_tax_lines')
        if (value = attributes[:'employer_tax_lines']).is_a?(Array)
          self.employer_tax_lines = value
        end
      end

      if attributes.key?(:'statutory_deduction_lines')
        if (value = attributes[:'statutory_deduction_lines']).is_a?(Array)
          self.statutory_deduction_lines = value
        end
      end

      if attributes.key?(:'tax_settings')
        self.tax_settings = attributes[:'tax_settings']
      end

      if attributes.key?(:'gross_earnings_history')
        self.gross_earnings_history = attributes[:'gross_earnings_history']
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
      payment_method_validator = EnumAttributeValidator.new('String', ["Cheque", "Electronically", "Manual"])
      return false unless payment_method_validator.valid?(@payment_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('String', ["Cheque", "Electronically", "Manual"])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for \"payment_method\", must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pay_slip_id == o.pay_slip_id &&
          employee_id == o.employee_id &&
          pay_run_id == o.pay_run_id &&
          last_edited == o.last_edited &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          total_earnings == o.total_earnings &&
          gross_earnings == o.gross_earnings &&
          total_pay == o.total_pay &&
          total_employer_taxes == o.total_employer_taxes &&
          total_employee_taxes == o.total_employee_taxes &&
          total_deductions == o.total_deductions &&
          total_reimbursements == o.total_reimbursements &&
          total_statutory_deductions == o.total_statutory_deductions &&
          total_superannuation == o.total_superannuation &&
          bacs_hash == o.bacs_hash &&
          payment_method == o.payment_method &&
          earnings_lines == o.earnings_lines &&
          leave_earnings_lines == o.leave_earnings_lines &&
          timesheet_earnings_lines == o.timesheet_earnings_lines &&
          deduction_lines == o.deduction_lines &&
          reimbursement_lines == o.reimbursement_lines &&
          leave_accrual_lines == o.leave_accrual_lines &&
          superannuation_lines == o.superannuation_lines &&
          payment_lines == o.payment_lines &&
          employee_tax_lines == o.employee_tax_lines &&
          employer_tax_lines == o.employer_tax_lines &&
          statutory_deduction_lines == o.statutory_deduction_lines &&
          tax_settings == o.tax_settings &&
          gross_earnings_history == o.gross_earnings_history
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pay_slip_id, employee_id, pay_run_id, last_edited, first_name, last_name, total_earnings, gross_earnings, total_pay, total_employer_taxes, total_employee_taxes, total_deductions, total_reimbursements, total_statutory_deductions, total_superannuation, bacs_hash, payment_method, earnings_lines, leave_earnings_lines, timesheet_earnings_lines, deduction_lines, reimbursement_lines, leave_accrual_lines, superannuation_lines, payment_lines, employee_tax_lines, employer_tax_lines, statutory_deduction_lines, tax_settings, gross_earnings_history].hash
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
        XeroRuby::PayrollNz.const_get(type).build_from_hash(value)
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
          to_hash_value = v.to_hash(downcase: downcase)
          to_hash_value
        end
        # value.compact.map { |v| _to_hash(v) }
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
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
