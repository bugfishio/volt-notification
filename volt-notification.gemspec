# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'volt/notification/version'

Gem::Specification.new do |spec|
  spec.name          = "volt-notification"
  spec.version       = Volt::Notification::VERSION
  spec.authors       = ["Bugfish Corp"]
  spec.email         = ["support@bugfish.io"]
  spec.summary       = %q{HTML5 Notifications for Volt}
  spec.description   = %q{Implementation of HTML5 notifications for the volt framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "volt", "~> 0.9.3.pre5"
  spec.add_development_dependency "rake"
end
