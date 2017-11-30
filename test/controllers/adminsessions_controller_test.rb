require 'test_helper'

class AdminsessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminsession = adminsessions(:one)
  end

  test "should get index" do
    get adminsessions_url
    assert_response :success
  end

  test "should get new" do
    get new_adminsession_url
    assert_response :success
  end

  test "should create adminsession" do
    assert_difference('Adminsession.count') do
      post adminsessions_url, params: { adminsession: { enddatetime: @adminsession.enddatetime, ip: @adminsession.ip, startdatetime: @adminsession.startdatetime, username: @adminsession.username } }
    end

    assert_redirected_to adminsession_url(Adminsession.last)
  end

  test "should show adminsession" do
    get adminsession_url(@adminsession)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminsession_url(@adminsession)
    assert_response :success
  end

  test "should update adminsession" do
    patch adminsession_url(@adminsession), params: { adminsession: { enddatetime: @adminsession.enddatetime, ip: @adminsession.ip, startdatetime: @adminsession.startdatetime, username: @adminsession.username } }
    assert_redirected_to adminsession_url(@adminsession)
  end

  test "should destroy adminsession" do
    assert_difference('Adminsession.count', -1) do
      delete adminsession_url(@adminsession)
    end

    assert_redirected_to adminsessions_url
  end
end
