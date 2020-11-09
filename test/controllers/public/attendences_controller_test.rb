require 'test_helper'

class Public::AttendencesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_attendences_show_url
    assert_response :success
  end

end
