$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'state_machine/version'

Gem::Specification.new do |s|
  s.name              = "state_machine_deuxito"
  s.version           = StateMachine::VERSION
  s.authors           = ["Cwro Wren"]
  s.description       = "Fork of seuros/state_machine for use by DU"
  s.summary           = "State machines for attributes"
  s.require_paths     = ["lib"]
  ignores             = File.read(".gitignore").split.map {|i| i.sub(/\/$/, "/*").sub(/^[^\/]/, "**/\\0")}
  s.files             = (Dir[".*"] + Dir["**/*"]).select {|f| File.file?(f) && !ignores.any? {|i| File.fnmatch(i, "/#{f}")}}
  s.test_files        = s.files.grep(/^test\//)
  s.rdoc_options      = %w(--line-numbers --inline-source --title state_machine --main README.md)
  s.extra_rdoc_files  = %w(README.md CHANGELOG.md LICENSE)

  s.add_development_dependency("rake")
  s.add_development_dependency("simplecov")
  s.add_development_dependency("appraisal")
  s.add_development_dependency("test-unit")
end
