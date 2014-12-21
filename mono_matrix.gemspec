$:.push File.expand_path("../lib", __FILE__)
require "mono_matrix/version"

Gem::Specification.new do |s|
  s.name        = 'mono_matrix'
  s.version     = MonoMatrix::VERSION
  s.date        = '2014-11-26'
  s.summary     = "Control monoprice 4x2 swithcer/splitter via serial"
  s.description = "A simple way to control your Monoprice 4x2 HDX***"
  s.authors     = ["defektive"]
  s.email       = 'sirbradleyd@gmail.com'
  s.homepage    = 'http://rubygems.org/gems/mono_matrix'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "serialport", '~> 1.3', '>= 1.3.1'
  s.add_runtime_dependency "thor", '~> 0.19'
  s.add_development_dependency "rake", '~>10.4'
  s.add_development_dependency "semver2", '~>3.4'
  s.add_development_dependency "rubygems-update", '~>2.4'
end
