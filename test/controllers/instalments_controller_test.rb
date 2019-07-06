require 'test_helper'

class InstalmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get instalments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get instalments_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get instalments_edit_url
    assert_response :success
  end

end
