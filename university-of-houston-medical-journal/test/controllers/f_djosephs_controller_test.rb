require 'test_helper'

class FDjosephsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_djoseph = f_djosephs(:one)
  end

  test "should get index" do
    get f_djosephs_url
    assert_response :success
  end

  test "should get new" do
    get new_f_djoseph_url
    assert_response :success
  end

  test "should create f_djoseph" do
    assert_difference('FDjoseph.count') do
      post f_djosephs_url, params: { f_djoseph: {  } }
    end

    assert_redirected_to f_djoseph_url(FDjoseph.last)
  end

  test "should show f_djoseph" do
    get f_djoseph_url(@f_djoseph)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_djoseph_url(@f_djoseph)
    assert_response :success
  end

  test "should update f_djoseph" do
    patch f_djoseph_url(@f_djoseph), params: { f_djoseph: {  } }
    assert_redirected_to f_djoseph_url(@f_djoseph)
  end

  test "should destroy f_djoseph" do
    assert_difference('FDjoseph.count', -1) do
      delete f_djoseph_url(@f_djoseph)
    end

    assert_redirected_to f_djosephs_url
  end
end
