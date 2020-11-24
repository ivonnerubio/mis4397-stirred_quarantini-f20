require 'test_helper'

class FDhallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dhalle = f_dhalles(:one)
  end

  test "should get index" do
    get f_dhalles_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dhalle_url
    assert_response :success
  end

  test "should create f_dhalle" do
    assert_difference('FDhalle.count') do
      post f_dhalles_url, params: { f_dhalle: {  } }
    end

    assert_redirected_to f_dhalle_url(FDhalle.last)
  end

  test "should show f_dhalle" do
    get f_dhalle_url(@f_dhalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dhalle_url(@f_dhalle)
    assert_response :success
  end

  test "should update f_dhalle" do
    patch f_dhalle_url(@f_dhalle), params: { f_dhalle: {  } }
    assert_redirected_to f_dhalle_url(@f_dhalle)
  end

  test "should destroy f_dhalle" do
    assert_difference('FDhalle.count', -1) do
      delete f_dhalle_url(@f_dhalle)
    end

    assert_redirected_to f_dhalles_url
  end
end
