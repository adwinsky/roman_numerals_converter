module RomanNumeralsConverter
  class Base
    attr_accessor :roman_number, :arabic_number, :number

    MAPPINGS = [
      { :roman => "M", :arabic => 1000 },
      { :roman => "CM", :arabic => 900 },
      { :roman => "D", :arabic => 500 },
      { :roman => "CD", :arabic => 400 },
      { :roman => "C", :arabic => 100 },
      { :roman => "XC", :arabic => 90 },
      { :roman => "L", :arabic => 50 },
      { :roman => "XL", :arabic => 40 },
      { :roman => "X", :arabic => 10 },
      { :roman => "IX", :arabic => 9 },
      { :roman => "V", :arabic => 5 },
      { :roman => "IV", :arabic => 4 },
      { :roman => "I", :arabic => 1}
    ]
    
    def initialize number
      self.number = number
      if self.is_roman? 
        self.roman_number = number
        self.arabic_number = self.convert_to_arabic 
      elsif self.is_arabic? 
        self.arabic_number = number
        self.roman_number = self.convert_to_roman 
      else 
        raise ArgumentError, "Can`t convert number"
      end
    end

    def is_roman? 
      ! "#{self.number}".match(/[IVXLCDM]+/).nil?
    end

    def is_arabic? 
      self.number.is_a? Fixnum
    end

    def to_roman
      self.roman_number
    end

    def to_arabic
      self.arabic_number
    end

    def convert_to_roman 
      temp_number = self.number
      roman_number = ""
      MAPPINGS.each_with_index do |mapping, i|
        q = temp_number/mapping[:arabic]

        if q <= 3 and q > 0 
          roman_number += mapping[:roman]*q
          temp_number -= mapping[:arabic]*q
        end
      end

      if temp_number > 0
        raise ArgumentError, "Number #{self.arabic_number} can`t be converted to a roman number"
      end
      roman_number
    end

    def convert_to_arabic 
      temp_number = self.number
      arabic_number = 0

      MAPPINGS.each_with_index do |mapping, i|
        q = number.scan(mapping[:roman]).count

        if i%2 == 1
          if q == 1 
            arabic_number += q*mapping[:arabic]
            temp_number = temp_number.split(mapping[:roman]).join
          elsif q > 1
            raise ArgumentError, "Number #{self.roman_number} can`t be converted to an arabic number"
          end
        end
      end

      MAPPINGS.each_with_index do |mapping, i|
        q = temp_number.scan(mapping[:roman]).count

        if q <= 3 and i%2 == 0
          arabic_number += q*mapping[:arabic]
          temp_number = temp_number.split(mapping[:roman]).join
        elsif q > 3
          raise ArgumentError, "Number #{self.roman_number} can`t be converted to an arabic number"
        end
      end
      arabic_number
    end

    private

    def number_from_mappings number
      RomanNumeralsConverter::MAPPINGS.each_pair do |key, val|
        if number == val
          return key
        end
      end
    end
  end
end
