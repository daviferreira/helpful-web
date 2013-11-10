ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/mock"

if $stdin.tty?
  require "minitest/pride"
end

class ActionController::TestCase
  include Devise::TestHelpers
end

Mail.defaults do
  delivery_method :test
end
