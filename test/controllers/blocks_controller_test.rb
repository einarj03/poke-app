require 'test_helper'

class BlocksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get blocks_new_url
    assert_response :success
  end

  test "should get create" do
    get blocks_create_url
    assert_response :success
  end

end
