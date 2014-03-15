# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tzatziki/version'

Gem::Specification.new do |spec|
  spec.name          = "tzatziki"
  spec.version       = Tzatziki::VERSION
  spec.authors       = ["tnarik"]
  spec.email         = ["tnarik@gmail.com"]
  spec.summary       = %q{Run features and steps from bundles, from a different folder.}
  spec.description   = %q{A tool using some cucumber and other stuff, to take away}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # development dependencies  
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  # development dependencies  
  #spec.add_development_dependency "rspec"

  # dependencies  
  spec.add_runtime_dependency "cucumber-core"
  spec.add_runtime_dependency "cucumber"
end
