# frozen_string_literal: true

require_relative 'vietnamese_holiday/version'
require_relative 'vietnamese_holiday/utils'

module VietnameseHoliday
  class Error < StandardError; end

  def self.lunar_date(date)
    Utils.lunar_date(date)
  end

  def self.check(date)
    Utils.check(date)
  end

  def self.name(date)
    Utils.name(date)
  end

  def self.in_month(year, month)
    Utils.holidays(Date.new(year, month).all_month)
  end

  def self.in_year(year)
    Utils.holidays(Date.new(year).all_year)
  end

  def self.between(from_date, to_date)
    [].tap do |result|
      date_by_years = (Date.parse(from_date)..Date.parse(to_date)).group_by(&:year)
      date_by_years.each_value do |value|
        result.concat(Utils.holidays(value))
      end
    end
  end
end
