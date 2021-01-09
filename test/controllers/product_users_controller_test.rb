require 'test_helper'

class ProductUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_users_index_url
    assert_response :success
  end

  test "should get show" do
    get product_users_show_url
    assert_response :success
  end

end
