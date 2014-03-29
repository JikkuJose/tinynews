# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tinynews/version'

Gem::Specification.new do |spec|
  spec.name          = "tinynews"
  spec.version       = TinyNews::VERSION
  spec.authors       = ["Jikku Jose"]
  spec.email         = ["jikku+home@qucentis.com"]
  spec.summary       = %q{News RSS gist viewer}
  spec.description   = %q{A simple gem to extract title of News RSS feeds for quick glance of news from various sources that can be configured.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "feedjira"
  spec.add_dependency "rainbow"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
