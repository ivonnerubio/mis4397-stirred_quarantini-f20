require 'test_helper'

class JoinNowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join_now = join_nows(:one)
  end

  test "should get index" do
    get join_nows_url
    assert_response :success
  end

  test "should get new" do
    get new_join_now_url
    assert_response :success
  end

  test "should create join_now" do
    assert_difference('JoinNow.count') do
      post join_nows_url, params: { join_now: { data_text: @join_now.data_text, string: @join_now.string, text: @join_now.text, title: @join_now.title } }
    end

    assert_redirected_to join_now_url(JoinNow.last)
  end

  test "should show join_now" do
    get join_now_url(@join_now)
    assert_response :success
  end

  test "should get edit" do
    get edit_join_now_url(@join_now)
    assert_response :success
  end

  test "should update join_now" do
    patch join_now_url(@join_now), params: { join_now: { data_text: @join_now.data_text, string: @join_now.string, text: @join_now.text, title: @join_now.title } }
    assert_redirected_to join_now_url(@join_now)
  end

  test "should destroy join_now" do
    assert_difference('JoinNow.count', -1) do
      delete join_now_url(@join_now)
    end

    assert_redirected_to join_nows_url
  end
end
