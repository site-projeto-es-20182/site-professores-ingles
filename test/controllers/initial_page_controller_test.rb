require 'test_helper'

class InitialPageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get initial_page_index_url
    assert_response :success
  end

end
