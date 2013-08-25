# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'biyo/version'

Gem::Specification.new do |spec|
  spec.name          = 'biyo'
  spec.version       = Biyo::VERSION
  spec.authors       = ['Halit Alptekin']
  spec.email         = ['info@halitalptekin.com']
  spec.description   = %q{Bio creator for hackers}
  spec.summary       = %q{Json format bio creator}
  spec.homepage      = 'https://github.com/halitalptekin/biyo'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_dependency = 'json'
end
