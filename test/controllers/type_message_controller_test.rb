require 'test_helper'

class TypeMessageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get type_message_index_url
    assert_response :success
  end

  test "should get show" do
    get type_message_show_url
    assert_response :success
  end

  test "should get new" do
    get type_message_new_url
    assert_response :success
  end

  test "should get edit" do
    get type_message_edit_url
    assert_response :success
  end

  test "should get delete" do
    get type_message_delete_url
    assert_response :success
  end

end
