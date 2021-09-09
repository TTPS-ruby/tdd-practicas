require 'simplecov'
SimpleCov.start do
  add_filter(/.*_test\.rb$/)
end

require "minitest/autorun"
require "minitest/reporters"

Minitest::Reporters.use!
