require 'test_helper'

class FDcarriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dcarry = f_dcarries(:one)
  end

  test "should get index" do
    get f_dcarries_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dcarry_url
    assert_response :success
  end

  test "should create f_dcarry" do
    assert_difference('FDcarrie.count') do
      post f_dcarries_url, params: { f_dcarry: {  } }
    end

    assert_redirected_to f_dcarry_url(FDcarrie.last)
  end

  test "should show f_dcarry" do
    get f_dcarry_url(@f_dcarry)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dcarry_url(@f_dcarry)
    assert_response :success
  end

  test "should update f_dcarry" do
    patch f_dcarry_url(@f_dcarry), params: { f_dcarry: {  } }
    assert_redirected_to f_dcarry_url(@f_dcarry)
  end

  test "should destroy f_dcarry" do
    assert_difference('FDcarrie.count', -1) do
      delete f_dcarry_url(@f_dcarry)
    end

    assert_redirected_to f_dcarries_url
  end
end
