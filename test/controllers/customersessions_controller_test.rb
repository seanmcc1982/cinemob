require 'test_helper'

class CustomersessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customersession = customersessions(:one)
  end

  test "should get index" do
    get customersessions_url
    assert_response :success
  end

  test "should get new" do
    get new_customersession_url
    assert_response :success
  end

  test "should create customersession" do
    assert_difference('Customersession.count') do
      post customersessions_url, params: { customersession: { customeremail: @customersession.customeremail, enddatetime: @customersession.enddatetime, ip: @customersession.ip, startdatetime: @customersession.startdatetime } }
    end

    assert_redirected_to customersession_url(Customersession.last)
  end

  test "should show customersession" do
    get customersession_url(@customersession)
    assert_response :success
  end

  test "should get edit" do
    get edit_customersession_url(@customersession)
    assert_response :success
  end

  test "should update customersession" do
    patch customersession_url(@customersession), params: { customersession: { customeremail: @customersession.customeremail, enddatetime: @customersession.enddatetime, ip: @customersession.ip, startdatetime: @customersession.startdatetime } }
    assert_redirected_to customersession_url(@customersession)
  end

  test "should destroy customersession" do
    assert_difference('Customersession.count', -1) do
      delete customersession_url(@customersession)
    end

    assert_redirected_to customersessions_url
  end
end
