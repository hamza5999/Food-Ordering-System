require "test_helper"

class ItemGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get item_groups_index_url
    assert_response :success
  end
end
