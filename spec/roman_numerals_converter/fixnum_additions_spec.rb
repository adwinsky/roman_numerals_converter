require "spec_helper"

describe RomanNumeralsConverter do
  describe RomanNumeralsConverter::FixnumAdditions do
    it "method to_roman should works" do
      10.to_roman == "X"
    end
  end
end
