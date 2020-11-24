require 'test_helper'

class FDowaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dowai = f_dowais(:one)
  end

  test "should get index" do
    get f_dowais_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dowai_url
    assert_response :success
  end

  test "should create f_dowai" do
    assert_difference('FDowai.count') do
      post f_dowais_url, params: { f_dowai: {  } }
    end

    assert_redirected_to f_dowai_url(FDowai.last)
  end

  test "should show f_dowai" do
    get f_dowai_url(@f_dowai)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dowai_url(@f_dowai)
    assert_response :success
  end

  test "should update f_dowai" do
    patch f_dowai_url(@f_dowai), params: { f_dowai: {  } }
    assert_redirected_to f_dowai_url(@f_dowai)
  end

  test "should destroy f_dowai" do
    assert_difference('FDowai.count', -1) do
      delete f_dowai_url(@f_dowai)
    end

    assert_redirected_to f_dowais_url
  end
end
