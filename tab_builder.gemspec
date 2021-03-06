# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tab_builder/version'

Gem::Specification.new do |gem|
  gem.name          = "tab_builder"
  gem.version       = TabBuilder::VERSION
  gem.authors       = ["Daniel Vandersluis"]
  gem.email         = ["dvandersluis@selfmgmt.com"]
  gem.description   = %q{DSL for building tabbed containers in Rails}
  gem.summary       = %q{DSL for building tabbed containers in Rails}
  gem.homepage      = "https://github.com/dvandersluis/tab_builder"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'i18n'
  gem.add_dependency 'activesupport', '> 3.0.0'
  gem.add_dependency 'actionpack', '> 3.0.0'
  gem.add_dependency 'railties', '> 3.0.0'
  gem.add_dependency 'haml', '>= 4.0.0'
  gem.add_dependency 'sass-rails'
  gem.add_dependency 'compass-rails'
  gem.add_dependency 'accessible_tooltip'
end
