require "roman_numerals_converter/version"
require "roman_numerals_converter/base"
require "roman_numerals_converter/fixnum_additions"

module RomanNumeralsConverter
  def self.is_arabic? number
    Base.new(number).is_arabic?
  end

  def self.is_roman? number
    Base.new(number).is_roman?
  end

  def self.to_arabic number
    Base.new(number).to_arabic
  end

  def self.to_roman number
    Base.new(number).to_roman
  end
end

class Fixnum
  include RomanNumeralsConverter::FixnumAdditions
end
