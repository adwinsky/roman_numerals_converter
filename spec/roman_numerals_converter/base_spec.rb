require "spec_helper"

describe RomanNumeralsConverter do
  def test_arabic_to_roman a,b
    converter = RomanNumeralsConverter::Base.new a
    converter.to_roman.should == b
  end

  def test_roman_to_arabic a,b
    converter = RomanNumeralsConverter::Base.new a
    converter.to_arabic.should == b
  end

  describe "converts arabic numerals to roman" do
    it "with ones" do
      test_arabic_to_roman 1, "I"
    end

    it "with twos" do
      test_arabic_to_roman 2, "II"
    end

    it "with threes" do
      test_arabic_to_roman 3, "III"
    end

    it "with tens" do
      test_arabic_to_roman 10, "X"
    end

    it "with twenties" do
      test_arabic_to_roman 20, "XX"
    end

    it "with twenties" do
      test_arabic_to_roman 21, "XXI"
    end

    it "with fours" do
      test_arabic_to_roman 4, "IV"
    end

    it "with fourteens" do
      test_arabic_to_roman 14, "XIV"
    end

    it "with fourties" do
      test_arabic_to_roman 40, "XL"
    end

    it "with fives" do
      test_arabic_to_roman 5, "V"
    end

    it "with sixs" do
      test_arabic_to_roman 6, "VI"
    end

    it "with sevens" do
      test_arabic_to_roman 7, "VII"
    end

    it "with eights" do
      test_arabic_to_roman 8, "VIII"
    end

    it "with nines" do
      test_arabic_to_roman 9, "IX"
    end

    it "with nineties" do
      test_arabic_to_roman 90, "XC"
    end

    it "with 50's" do
      test_arabic_to_roman 50, "L"
    end

    it "with 100's" do
      test_arabic_to_roman 100, "C"
    end

    it "with 400's" do
      test_arabic_to_roman 400, "CD"
    end

    it "with 500's" do
      test_arabic_to_roman 500, "D"
    end

    it "with 900's" do
      test_arabic_to_roman 900, "CM"
    end

    it "with 1901's" do
      test_arabic_to_roman 1941, "MCMXLI"
    end

    it "with 1999's" do
      test_arabic_to_roman 1999, "MCMXCIX"
    end

    it "with 3999's" do
      test_arabic_to_roman 3999, "MMMCMXCIX"
    end

    it "fails with 4000's" do
      lambda do 
        converter = RomanNumeralsConverter.new 4000
        converter.to_roman 
      end.should raise_error
    end
  end

  describe "converts roman numerals to arabic" do
    it "with I" do
      test_roman_to_arabic "I", 1
    end

    it "with II" do
      test_roman_to_arabic "II", 2
    end

    it "with III" do
      test_roman_to_arabic "III", 3
    end

    it "with IV" do
      test_roman_to_arabic "IV", 4
    end

    it "with V" do
      test_roman_to_arabic "V", 5
    end

    it "with VI" do
      test_roman_to_arabic "VI", 6
    end

    it "with X" do
      test_roman_to_arabic "X",10 
    end

    it "with XIV" do
      test_roman_to_arabic "XIV",14
    end

    it "with XL" do
      test_roman_to_arabic "XL",40
    end

    it "with L" do
      test_roman_to_arabic "L",50 
    end

    it "with XC" do
      test_roman_to_arabic "XC",90 
    end

    it "with C" do
      test_roman_to_arabic "C",100 
    end

    it "with CD" do
      test_roman_to_arabic "CD",400 
    end

    it "with D" do
      test_roman_to_arabic "D",500 
    end

    it "with CM" do
      test_roman_to_arabic "CM",900 
    end

    it "with M" do
      test_roman_to_arabic "M",1000 
    end

    it "fails with IIII" do
      lambda do 
        converter = RomanNumeralsConverter.new "IIII"
        converter.to_arabic 
      end.should raise_error
    end

    it "fails with IVIV" do
      lambda do 
        converter = RomanNumeralsConverter.new "IVIV"
        converter.to_arabic 
      end.should raise_error
    end
  end
end
