require "application_system_test_case"

class ClassTasksTest < ApplicationSystemTestCase
  setup do
    @class_task = class_tasks(:one)
  end

  test "visiting the index" do
    visit class_tasks_url
    assert_selector "h1", text: "Class Tasks"
  end

  test "creating a Class task" do
    visit class_tasks_url
    click_on "New Class Task"

    fill_in "Start time", with: @class_task.start_time
    click_on "Create Class task"

    assert_text "Class task was successfully created"
    click_on "Back"
  end

  test "updating a Class task" do
    visit class_tasks_url
    click_on "Edit", match: :first

    fill_in "Start time", with: @class_task.start_time
    click_on "Update Class task"

    assert_text "Class task was successfully updated"
    click_on "Back"
  end

  test "destroying a Class task" do
    visit class_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Class task was successfully destroyed"
  end
end
