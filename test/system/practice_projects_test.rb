require "application_system_test_case"

class PracticeProjectsTest < ApplicationSystemTestCase
  setup do
    @practice_project = practice_projects(:one)
  end

  test "visiting the index" do
    visit practice_projects_url
    assert_selector "h1", text: "Practice projects"
  end

  test "should create practice project" do
    visit practice_projects_url
    click_on "New practice project"

    click_on "Create Practice project"

    assert_text "Practice project was successfully created"
    click_on "Back"
  end

  test "should update Practice project" do
    visit practice_project_url(@practice_project)
    click_on "Edit this practice project", match: :first

    click_on "Update Practice project"

    assert_text "Practice project was successfully updated"
    click_on "Back"
  end

  test "should destroy Practice project" do
    visit practice_project_url(@practice_project)
    click_on "Destroy this practice project", match: :first

    assert_text "Practice project was successfully destroyed"
  end
end
