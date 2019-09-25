require 'test_helper'

class TypeAttachmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get type_attachment_index_url
    assert_response :success
  end

  test "should get show" do
    get type_attachment_show_url
    assert_response :success
  end

  test "should get new" do
    get type_attachment_new_url
    assert_response :success
  end

  test "should get edit" do
    get type_attachment_edit_url
    assert_response :success
  end

  test "should get delete" do
    get type_attachment_delete_url
    assert_response :success
  end

end
