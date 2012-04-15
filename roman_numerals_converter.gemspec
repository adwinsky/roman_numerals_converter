# -*- encoding: utf-8 -*-
require File.expand_path('../lib/roman_numerals_converter/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Adam Dratwinski"]
  gem.email         = ["adam.dratwinski@gmail.com"]
  gem.description   = %q{Simple tool that provides API for converting Roman Numerals to Arabic and vice versa}
  gem.summary       = %q{Simple tool that provides API for converting Roman Numerals to Arabic and vice versa}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "roman_numerals_converter"
  gem.require_paths = ["lib"]
  gem.version       = RomanNumeralsConverter::VERSION

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"

end
