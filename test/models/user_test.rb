require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'Email presence test' do
    u = users :no_email
    assert_not u.save
  end

end
