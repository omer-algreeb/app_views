require 'test_helper'

class JopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jop_index_url
    assert_response :success
  end

  test "should get show" do
    get jop_show_url
    assert_response :success
  end

  test "should get new" do
    get jop_new_url
    assert_response :success
  end

  test "should get edit" do
    get jop_edit_url
    assert_response :success
  end

  test "should get delete" do
    get jop_delete_url
    assert_response :success
  end

end
