# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'badcards/version'

Gem::Specification.new do |spec|
  spec.name          = "badcards"
  spec.version       = Badcards::VERSION
  spec.authors       = ["Benjamin Hsieh, Ben's Potatoes"]
  spec.email         = ["benspotatoes@gmail.com"]
  spec.summary       = %q{Ruby library for playing cards including BaDEmporium images.}
  spec.description   = %q{Includes cards, decks (of multiple sizes), hands, and drawing (of multiple cards).}
  spec.homepage      = "http://github.com/benspotatoes/badcards"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.1.0", ">= 10.1.0"
  spec.add_development_dependency "rspec", "~> 2.14.1", ">= 2.14.1"
  spec.add_development_dependency "coveralls", "~> 0.7.0", ">= 0.7.0"
end
