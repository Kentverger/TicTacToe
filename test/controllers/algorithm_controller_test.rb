require "test_helper"

class AlgorithmControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get algorithm_index_url
    assert_response :success
  end
end
