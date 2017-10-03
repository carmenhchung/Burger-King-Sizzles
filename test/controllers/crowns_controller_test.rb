require 'test_helper'

class CrownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crown = crowns(:one)
  end

  test "should get index" do
    get crowns_url
    assert_response :success
  end

  test "should get new" do
    get new_crown_url
    assert_response :success
  end

  test "should create crown" do
    assert_difference('Crown.count') do
      post crowns_url, params: { crown: { tweet_id: @crown.tweet_id, user_id: @crown.user_id } }
    end

    assert_redirected_to crown_url(Crown.last)
  end

  test "should show crown" do
    get crown_url(@crown)
    assert_response :success
  end

  test "should get edit" do
    get edit_crown_url(@crown)
    assert_response :success
  end

  test "should update crown" do
    patch crown_url(@crown), params: { crown: { tweet_id: @crown.tweet_id, user_id: @crown.user_id } }
    assert_redirected_to crown_url(@crown)
  end

  test "should destroy crown" do
    assert_difference('Crown.count', -1) do
      delete crown_url(@crown)
    end

    assert_redirected_to crowns_url
  end
end
