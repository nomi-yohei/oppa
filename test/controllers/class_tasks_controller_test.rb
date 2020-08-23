require 'test_helper'

class ClassTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @class_task = class_tasks(:one)
  end

  test "should get index" do
    get class_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_class_task_url
    assert_response :success
  end

  test "should create class_task" do
    assert_difference('ClassTask.count') do
      post class_tasks_url, params: { class_task: { start_time: @class_task.start_time } }
    end

    assert_redirected_to class_task_url(ClassTask.last)
  end

  test "should show class_task" do
    get class_task_url(@class_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_class_task_url(@class_task)
    assert_response :success
  end

  test "should update class_task" do
    patch class_task_url(@class_task), params: { class_task: { start_time: @class_task.start_time } }
    assert_redirected_to class_task_url(@class_task)
  end

  test "should destroy class_task" do
    assert_difference('ClassTask.count', -1) do
      delete class_task_url(@class_task)
    end

    assert_redirected_to class_tasks_url
  end
end
