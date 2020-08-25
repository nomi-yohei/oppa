require 'test_helper'

class Admin::ClassTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_class_tasks_new_url
    assert_response :success
  end

end
