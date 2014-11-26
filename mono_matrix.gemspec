Gem::Specification.new do |s|
  s.name        = 'mono_matrix'
  s.version     = '0.0.0'
  s.date        = '2014-11-26'
  s.summary     = "For controlling a Monoprice 4x2 Switcher/Splitter"
  s.description = "For controlling a Monoprice 4x2 Switcher/Splitter"
  s.authors     = ["defektive"]
  s.email       = 'sirbradleyd@gmail.com'
  s.files       = ["lib/mono_matrix.rb"]
  s.homepage    = 'http://rubygems.org/gems/mono_matrix'
  s.license     = 'MIT'


  s.add_runtime_dependency "serialport", '~> 1.3', '>= 1.3.1'
end
