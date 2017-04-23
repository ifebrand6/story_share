require 'test_helper'

class StoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get story_index_url
    assert_response :success
  end

  test "should get show" do
    get story_show_url
    assert_response :success
  end

  test "should get new" do
    get story_new_url
    assert_response :success
  end

  test "should get edit" do
    get story_edit_url
    assert_response :success
  end

  test "should get delete" do
    get story_delete_url
    assert_response :success
  end

  test "should get create" do
    get story_create_url
    assert_response :success
  end

end
