require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get index_home_page_url
    assert_response :success
  end

end
