if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start { add_filter '/test/' }
end

# require 'test/unit'
Dir["/test/unit/*.rb"].each {|file| require file }
require 'state_machine'
