# -*- encoding: utf-8 -*-
require File.expand_path('../lib/flipper/version', __FILE__)

flipper_mongo_files = lambda { |file|
  file =~ /active_record/
}

Gem::Specification.new do |gem|
  gem.authors       = ["John Nunemaker"]
  gem.email         = ["nunemaker@gmail.com"]
  gem.summary       = "ActiveRecord adapter for Flipper"
  gem.description   = "ActiveRecord adapter for Flipper"
  gem.license       = "MIT"
  gem.homepage      = "https://github.com/jnunemaker/flipper"

  gem.files         = `git ls-files`.split("\n").select(&flipper_mongo_files) + ["lib/flipper/version.rb"]
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n").select(&flipper_mongo_files)
  gem.name          = "flipper-active_record"
  gem.require_paths = ["lib"]
  gem.version       = Flipper::VERSION

  gem.add_dependency 'flipper', "~> #{Flipper::VERSION}"
  gem.add_dependency 'activerecord', ">= 3.2", "< 5"
end