require 'test_helper'

class FDzakirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dzakir = f_dzakirs(:one)
  end

  test "should get index" do
    get f_dzakirs_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dzakir_url
    assert_response :success
  end

  test "should create f_dzakir" do
    assert_difference('FDzakir.count') do
      post f_dzakirs_url, params: { f_dzakir: {  } }
    end

    assert_redirected_to f_dzakir_url(FDzakir.last)
  end

  test "should show f_dzakir" do
    get f_dzakir_url(@f_dzakir)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dzakir_url(@f_dzakir)
    assert_response :success
  end

  test "should update f_dzakir" do
    patch f_dzakir_url(@f_dzakir), params: { f_dzakir: {  } }
    assert_redirected_to f_dzakir_url(@f_dzakir)
  end

  test "should destroy f_dzakir" do
    assert_difference('FDzakir.count', -1) do
      delete f_dzakir_url(@f_dzakir)
    end

    assert_redirected_to f_dzakirs_url
  end
end
