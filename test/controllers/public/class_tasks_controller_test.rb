require 'test_helper'

class Public::ClassTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_class_tasks_index_url
    assert_response :success
  end

  test "should get show" do
    get public_class_tasks_show_url
    assert_response :success
  end

end
