require 'test_helper'

class Admin::AttendencesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_attendences_show_url
    assert_response :success
  end

end
