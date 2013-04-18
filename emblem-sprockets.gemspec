# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emblem/sprockets/version'

Gem::Specification.new do |gem|
  gem.name          = "emblem-sprockets"
  gem.version       = Emblem::Sprockets::VERSION
  gem.authors       = ["Alex Speller", "Alex Matchneer", "Micah Geisel"]
  gem.email         = ["micah@botandrose.com"]
  gem.description   = %q{Use emblem.js with sprockets - see https://github.com/machty/emblem.js}
  gem.summary       = %q{Use emblem.js with sprockets}
  gem.homepage      = "http://github.com/botandrose/emblem-sprockets"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "barber-emblem"
end
