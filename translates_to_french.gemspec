# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'translates_to_french/version'

Gem::Specification.new do |spec|
  spec.name          = "translates_to_french"
  spec.version       = TranslatesToFrench::VERSION
  spec.authors       = ["Gordon B. Isnor"]
  spec.email         = ["gordonbisnor@gmail.com"]
  spec.summary       = "Basic i18n helper for Canadian Rails application models"
  spec.description   = "Basic i18n helper for Canadian Rails application models"
  spec.homepage      = "http://blog.isnorcreative.com/2015/02/21/translates-to-french.html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
