# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mantis/version'

Gem::Specification.new do |spec|
  spec.name          = "mantis"
  spec.version       = Mantis::VERSION
  spec.authors       = ["franklin"]
  spec.email         = ["franklin@weareinteractive.com"]
  spec.description   = %q{Gem with some useful command line tools.}
  spec.summary       = %q{Command line snippets.}
  spec.homepage      = "https://github.com/franklinkim/gem-mantis"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "git"
  spec.add_runtime_dependency "thor"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler"
end
