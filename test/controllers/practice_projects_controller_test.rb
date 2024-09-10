require "test_helper"

class PracticeProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practice_project = practice_projects(:one)
  end

  test "should get index" do
    get practice_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_practice_project_url
    assert_response :success
  end

  test "should create practice_project" do
    assert_difference("PracticeProject.count") do
      post practice_projects_url, params: { practice_project: {  } }
    end

    assert_redirected_to practice_project_url(PracticeProject.last)
  end

  test "should show practice_project" do
    get practice_project_url(@practice_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_practice_project_url(@practice_project)
    assert_response :success
  end

  test "should update practice_project" do
    patch practice_project_url(@practice_project), params: { practice_project: {  } }
    assert_redirected_to practice_project_url(@practice_project)
  end

  test "should destroy practice_project" do
    assert_difference("PracticeProject.count", -1) do
      delete practice_project_url(@practice_project)
    end

    assert_redirected_to practice_projects_url
  end
end
