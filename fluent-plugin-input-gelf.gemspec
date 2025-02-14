# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-input-gelf-kolyunya"
  gem.description = "Fork A GELF input plugin for fluentd"
  gem.license     = "MIT"
  gem.homepage    = "https://github.com/koxx009/fluent-plugin-input-gelf-kolyunya"
  gem.summary     = gem.description
  gem.version     = "0.3.5"
  gem.authors     = ["Nikolay Ostroushko"]
  gem.email       = "n.ostroushko@mts.ai"
  gem.files       = `git ls-files`.split("\n")
  gem.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.required_ruby_version = '>= 2.7.0'
  gem.require_paths = ['lib']

  gem.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
  gem.add_runtime_dependency "gelfd2", ">= 0.3.0"

  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "test-unit"
  gem.add_development_dependency "gelf", ">= 2.0.0"
end
