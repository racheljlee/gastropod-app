require 'test_helper'

class PodcastsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get podcasts_index_url
    assert_response :success
  end

  test "should get view" do
    get podcasts_view_url
    assert_response :success
  end

end
