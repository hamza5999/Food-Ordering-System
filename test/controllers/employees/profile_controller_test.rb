require "test_helper"

class Employees::ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get employees_profile_show_url
    assert_response :success
  end
end
