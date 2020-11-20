require 'test_helper'

class FDevelynsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_develyn = f_develyns(:one)
  end

  test "should get index" do
    get f_develyns_url
    assert_response :success
  end

  test "should get new" do
    get new_f_develyn_url
    assert_response :success
  end

  test "should create f_develyn" do
    assert_difference('FDevelyn.count') do
      post f_develyns_url, params: { f_develyn: {  } }
    end

    assert_redirected_to f_develyn_url(FDevelyn.last)
  end

  test "should show f_develyn" do
    get f_develyn_url(@f_develyn)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_develyn_url(@f_develyn)
    assert_response :success
  end

  test "should update f_develyn" do
    patch f_develyn_url(@f_develyn), params: { f_develyn: {  } }
    assert_redirected_to f_develyn_url(@f_develyn)
  end

  test "should destroy f_develyn" do
    assert_difference('FDevelyn.count', -1) do
      delete f_develyn_url(@f_develyn)
    end

    assert_redirected_to f_develyns_url
  end
end
