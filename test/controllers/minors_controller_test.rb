require 'test_helper'

class MinorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get minors_index_url
    assert_response :success
  end

  test "should get edit" do
    get minors_edit_url
    assert_response :success
  end

  test "should get create" do
    get minors_create_url
    assert_response :success
  end

end
