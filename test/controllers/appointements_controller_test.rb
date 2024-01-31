require "test_helper"

class AppointementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appointements_index_url
    assert_response :success
  end

  test "should get show" do
    get appointements_show_url
    assert_response :success
  end

  test "should get new" do
    get appointements_new_url
    assert_response :success
  end

  test "should get create" do
    get appointements_create_url
    assert_response :success
  end

  test "should get edit" do
    get appointements_edit_url
    assert_response :success
  end

  test "should get update" do
    get appointements_update_url
    assert_response :success
  end
end
