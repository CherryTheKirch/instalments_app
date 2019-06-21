require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test_email = 'test@test.test'
  test_password = '123456'

  test 'should create valideted user' do
    user = User.new email: test_email, password: test_password
    assert user.save
  end

  test 'should not create with no email' do
    user = User.new email: nil, password: test_password
    assert_not user.save
  end

  test 'should not create with password not long enough' do
    user = User.new email: test_email, password: test_password.chop!.chop!
    assert_not user.save
  end

end