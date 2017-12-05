require 'test_helper'

class BookingitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookingitems_index_url
    assert_response :success
  end

  test "should get show" do
    get bookingitems_show_url
    assert_response :success
  end

  test "should get new" do
    get bookingitems_new_url
    assert_response :success
  end

  test "should get edit" do
    get bookingitems_edit_url
    assert_response :success
  end

end
