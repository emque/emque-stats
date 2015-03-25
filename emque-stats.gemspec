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

  spec.require_paths = %w(lib)
  spec.files = %w(LICENSE.txt README.md Rakefile emque-stats.gemspec)
  spec.files += Dir.glob('lib/**/*.rb')
  spec.files += Dir.glob('spec/**/*')
  spec.test_files = Dir.glob('spec/**/*')

  spec.add_dependency "emque-producing", "1.0.0.beta3"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake",    "~> 10.4.2"
  spec.add_development_dependency "rspec",   "~> 3.2.0"
  spec.add_development_dependency "bunny",   "~> 1.7.0"
  spec.add_development_dependency "pry"
end
