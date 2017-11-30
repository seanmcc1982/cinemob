require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get admin_login_url
    assert_response :success
  end

  test "should get logout" do
    get admin_logout_url
    assert_response :success
  end

  test "should get screen" do
    get admin_screen_url
    assert_response :success
  end

  test "should get price" do
    get admin_price_url
    assert_response :success
  end

  test "should get film" do
    get admin_film_url
    assert_response :success
  end

  test "should get showing" do
    get admin_showing_url
    assert_response :success
  end

  test "should get user" do
    get admin_user_url
    assert_response :success
  end

end
