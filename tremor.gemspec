# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tremor/version'

Gem::Specification.new do |spec|
  spec.name          = "tremor"
  spec.version       = Tremor::VERSION
  spec.authors       = ["Phillip Simmonds"]
  spec.email         = ["phillip.j.simmonds@gmail.com"]
  spec.summary       = %q{Trello-like task manager saved on local JSON files}
  spec.description   = %q{Trello-like task manager saved on local JSON files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
