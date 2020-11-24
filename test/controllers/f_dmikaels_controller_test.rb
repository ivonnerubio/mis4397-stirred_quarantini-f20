require 'test_helper'

class FDmikaelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dmikael = f_dmikaels(:one)
  end

  test "should get index" do
    get f_dmikaels_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dmikael_url
    assert_response :success
  end

  test "should create f_dmikael" do
    assert_difference('FDmikael.count') do
      post f_dmikaels_url, params: { f_dmikael: {  } }
    end

    assert_redirected_to f_dmikael_url(FDmikael.last)
  end

  test "should show f_dmikael" do
    get f_dmikael_url(@f_dmikael)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dmikael_url(@f_dmikael)
    assert_response :success
  end

  test "should update f_dmikael" do
    patch f_dmikael_url(@f_dmikael), params: { f_dmikael: {  } }
    assert_redirected_to f_dmikael_url(@f_dmikael)
  end

  test "should destroy f_dmikael" do
    assert_difference('FDmikael.count', -1) do
      delete f_dmikael_url(@f_dmikael)
    end

    assert_redirected_to f_dmikaels_url
  end
end
