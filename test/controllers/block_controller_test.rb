require 'test_helper'

class BlockControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get block_new_url
    assert_response :success
  end

  test "should get create" do
    get block_create_url
    assert_response :success
  end

end
