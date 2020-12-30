require 'test_helper'

class ProductAdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prodct_admins_index_url
    assert_response :success
  end

  test "should get show" do
    get prodct_admins_show_url
    assert_response :success
  end

  test "should get new" do
    get prodct_admins_new_url
    assert_response :success
  end

  def prodct_admins_create_url
    # code here
  end

  test "should get create" do
    get prodct_admins_create_url
    assert_response :success
  end

  test "should get edit" do
    get prodct_admins_edit_url
    assert_response :success
  end

  test "should get update" do
    get prodct_admins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get prodct_admins_destroy_url
    assert_response :success
  end

end
