# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hypertodo/version'

Gem::Specification.new do |spec|
  spec.name          = "hypertodo"
  spec.version       = Hypertodo::VERSION
  spec.authors       = ["chansuke"]
  spec.email         = ["moonset20@gmail.com"]

  spec.summary       = %q{Hyper TODO management tool}
  spec.description   = %q{To accelerate one's productivity}
  spec.homepage      = "https://github.com/chansuke/hypertodo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 3.2.0"
  spec.add_dependency "sqlite3",      "~> 1.3.0"
  spec.add_development_dependency "bundler",   "~> 1.10"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "yard",      "~> 0.8"
  spec.add_development_dependency "redcarpet", "~> 2.2"
end
