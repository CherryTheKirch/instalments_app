ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require_relative '../test/helpers/db_cleaner'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  setup do
    DB_CLEANER.user_cleaner
  end
end
