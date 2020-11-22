require 'test_helper'

class FDrobertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_drobert = f_droberts(:one)
  end

  test "should get index" do
    get f_droberts_url
    assert_response :success
  end

  test "should get new" do
    get new_f_drobert_url
    assert_response :success
  end

  test "should create f_drobert" do
    assert_difference('FDrobert.count') do
      post f_droberts_url, params: { f_drobert: {  } }
    end

    assert_redirected_to f_drobert_url(FDrobert.last)
  end

  test "should show f_drobert" do
    get f_drobert_url(@f_drobert)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_drobert_url(@f_drobert)
    assert_response :success
  end

  test "should update f_drobert" do
    patch f_drobert_url(@f_drobert), params: { f_drobert: {  } }
    assert_redirected_to f_drobert_url(@f_drobert)
  end

  test "should destroy f_drobert" do
    assert_difference('FDrobert.count', -1) do
      delete f_drobert_url(@f_drobert)
    end

    assert_redirected_to f_droberts_url
  end
end
