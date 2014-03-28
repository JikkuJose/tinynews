# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fjira/version'

Gem::Specification.new do |spec|
  spec.name          = "fjira"
  spec.version       = Fjira::VERSION
  spec.authors       = ["Jikku Jose"]
  spec.email         = ["jikku+home@qucentis.com"]
  spec.summary       = %q{Gem to test feedjira}
  spec.description   = %q{Attempt to create my news tool}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "feedjira"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
