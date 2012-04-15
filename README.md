# Roman Numerals Converter

Roman Numerals Converter is a simple tool that provides API for converting arabic numerals to roman and vice versa.

## Installation

Add this line to your application's Gemfile:

    gem 'roman_numerals_converter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install roman_numerals_converter

## Usage

API is simple, it provides following method:

```ruby
10.to_arabic                           # => "X"
RomanNumeralsConverter::is_arabic? 10  # => true
RomanNumeralsConverter::is_roman? "X" # => true
RomanNumeralsConverter::to_roman 10  # => "X"
RomanNumeralsConverter::to_arabic "X" # => 10
```

Note that the maximum Roman number supported is 3999 (MMMCMXCIX).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
