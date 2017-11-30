# frozen-string-literal: true
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rextester_runcode/version'

Gem::Specification.new do |spec|
  spec.name          = 'rextester_runcode'
  spec.version       = RextesterRuncode::VERSION
  spec.authors       = ['Muhammad Mufid Afif']
  spec.description   = 'A Ruby wrapper for Rextester Runcode API.'
  spec.email         = ['mufid@outlook.com']

  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/mufid/rextester-runcode-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday'
  spec.add_development_dependency 'bundler', '~> 1.0'

  spec.required_ruby_version = '>=2.2.0'

end
