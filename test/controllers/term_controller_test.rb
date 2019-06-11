require 'test_helper'

class TermControllerTest < ActionDispatch::IntegrationTest
  test "should get use" do
    get term_use_url
    assert_response :success
  end

  test "should get service" do
    get term_service_url
    assert_response :success
  end

end
