# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'infinity2008/version'

Gem::Specification.new do |spec|
  spec.name          = 'infinity2008'
  spec.version       = Infinity2008::VERSION
  spec.authors       = ["Alejandro Martinez Ruiz"]
  spec.email         = ['alex@flawedcode.org']
  spec.description   = %q{This gem makes Ruby sing along with you the Guru Project's Infinity 2008 (Klaas Vocal Edit) hit}
  spec.summary       = %q{The Guru Project's Infinity 2008 (Klaas Vocal Edit) gem}
  spec.homepage      = "http://github.com/unleashed/infinity2008"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'

  spec.add_development_dependency "bundler", ">= 2.2.33"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
end
