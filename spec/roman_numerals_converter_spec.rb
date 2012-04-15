require "spec_helper"

describe RomanNumeralsConverter do
  it "should have working method is_arabic?" do
    RomanNumeralsConverter::is_arabic?("X").should == false
    RomanNumeralsConverter::is_arabic?(10).should == true
  end

  it "should have working method to_arabic" do
    RomanNumeralsConverter::to_arabic("X").should == 10
  end

  it "should have working method is_roman?" do
    RomanNumeralsConverter::is_roman?("X").should == true
    RomanNumeralsConverter::is_roman?(10).should == false
  end

  it "should have working method to_roman" do
    RomanNumeralsConverter::to_roman(10).should == "X"
  end
end
