require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get listing" do
    get home_listing_url
    assert_response :success
  end

end
