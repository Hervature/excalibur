# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'excalibur/version'

Gem::Specification.new do |spec|
  spec.name          = "excalibur"
  spec.version       = Excalibur::VERSION
  spec.authors       = ["Zachary Hervieux-Moore"]
  spec.email         = ["zachary.moore.1993@gmail.com"]
  spec.summary       = %q{Ruby Wrapper for Interactive Broker's API}
  spec.description   = ""
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
