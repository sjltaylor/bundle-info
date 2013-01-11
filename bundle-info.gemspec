# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundle-info/version'

Gem::Specification.new do |gem|
  gem.name          = "bundle-info"
  gem.version       = Bundle::Info::VERSION
  gem.authors       = ["Sam Taylor"]
  gem.email         = ["sjltaylor@gmail.com"]
  gem.description   = %q{List the name, summary and homepage of gems from  Gemfile}
  gem.summary       = gem.description
  gem.homepage      = "https://github.com/sjltaylor/bundle-info"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
