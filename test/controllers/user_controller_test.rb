require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get user_login_url
    assert_response :success
  end

  test "should get logout" do
    get user_logout_url
    assert_response :success
  end

  test "should get register" do
    get user_register_url
    assert_response :success
  end

  test "should get pwreset" do
    get user_pwreset_url
    assert_response :success
  end

  test "should get history" do
    get user_history_url
    assert_response :success
  end

  test "should get sub" do
    get user_sub_url
    assert_response :success
  end

  test "should get unsub" do
    get user_unsub_url
    assert_response :success
  end

end
