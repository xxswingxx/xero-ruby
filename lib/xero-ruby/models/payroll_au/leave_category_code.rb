=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  class LeaveCategoryCode
    ANNUALLEAVE ||= "ANNUALLEAVE".freeze
    LONGSERVICELEAVE ||= "LONGSERVICELEAVE".freeze
    PERSONALSICKCARERSLEAVE ||= "PERSONALSICKCARERSLEAVE".freeze
    ROSTEREDDAYOFF ||= "ROSTEREDDAYOFF".freeze
    TIMEOFFINLIEU ||= "TIMEOFFINLIEU".freeze
    COMPASSIONATEANDBEREAVEMENTLEAVE ||= "COMPASSIONATEANDBEREAVEMENTLEAVE".freeze
    STUDYLEAVE ||= "STUDYLEAVE".freeze
    FAMILYANDDOMESTICVIOLENCELEAVE ||= "FAMILYANDDOMESTICVIOLENCELEAVE".freeze
    SPECIALPAIDLEAVE ||= "SPECIALPAIDLEAVE".freeze
    COMMUNITYSERVICELEAVE ||= "COMMUNITYSERVICELEAVE".freeze
    JURYDUTYLEAVE ||= "JURYDUTYLEAVE".freeze
    DEFENCERESERVELEAVE ||= "DEFENCERESERVELEAVE".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LeaveCategoryCode.constants.select { |c| LeaveCategoryCode::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LeaveCategoryCode" if constantValues.empty?
      value
    end
  end
end