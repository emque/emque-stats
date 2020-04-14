# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "emque/stats/version"

Gem::Specification.new do |spec|
  spec.name          = "emque-stats"
  spec.version       = Emque::Stats::VERSION
  spec.authors       = ["Ryan Williams"]
  spec.email         = ["oss@teamsnap.com"]
  spec.description   = %q{Collect and send application stats and events via Emque}
  spec.summary       = %q{Collect and send application stats and events via Emque}
  spec.homepage      = "https://github.com/teamsnap/emque-stats"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.3"

  spec.require_paths = %w(lib)
  spec.files = %w(LICENSE.txt README.md Rakefile emque-stats.gemspec)
  spec.files += Dir.glob('lib/**/*.rb')
  spec.files += Dir.glob('spec/**/*')
  spec.test_files = Dir.glob('spec/**/*')

  spec.add_dependency "emque-producing",  "~> 1.2"

  spec.add_development_dependency "bundler", ">= 1.3.0", "< 2.0"
  spec.add_development_dependency "rake",    ">= 12.3.3"
  spec.add_development_dependency "rspec",   "~> 3.9.0"
  spec.add_development_dependency "bunny",   "~> 2.14"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"
end
