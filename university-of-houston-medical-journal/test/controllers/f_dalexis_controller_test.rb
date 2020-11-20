require 'test_helper'

class FDalexisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dalexi = f_dalexis(:one)
  end

  test "should get index" do
    get f_dalexis_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dalexi_url
    assert_response :success
  end

  test "should create f_dalexi" do
    assert_difference('FDalexi.count') do
      post f_dalexis_url, params: { f_dalexi: {  } }
    end

    assert_redirected_to f_dalexi_url(FDalexi.last)
  end

  test "should show f_dalexi" do
    get f_dalexi_url(@f_dalexi)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dalexi_url(@f_dalexi)
    assert_response :success
  end

  test "should update f_dalexi" do
    patch f_dalexi_url(@f_dalexi), params: { f_dalexi: {  } }
    assert_redirected_to f_dalexi_url(@f_dalexi)
  end

  test "should destroy f_dalexi" do
    assert_difference('FDalexi.count', -1) do
      delete f_dalexi_url(@f_dalexi)
    end

    assert_redirected_to f_dalexis_url
  end
end
