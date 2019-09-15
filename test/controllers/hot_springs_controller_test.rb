require 'test_helper'

class HotSpringsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get hot_springs_new_url
    assert_response :success
  end

  test "should get show" do
    get hot_springs_show_url
    assert_response :success
  end

  test "should get index" do
    get hot_springs_index_url
    assert_response :success
  end

  test "should get edit" do
    get hot_springs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get hot_springs_destroy_url
    assert_response :success
  end

  test "should get update" do
    get hot_springs_update_url
    assert_response :success
  end

end
