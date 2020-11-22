require 'test_helper'

class FDpetrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @f_dpetra = f_dpetras(:one)
  end

  test "should get index" do
    get f_dpetras_url
    assert_response :success
  end

  test "should get new" do
    get new_f_dpetra_url
    assert_response :success
  end

  test "should create f_dpetra" do
    assert_difference('FDpetra.count') do
      post f_dpetras_url, params: { f_dpetra: {  } }
    end

    assert_redirected_to f_dpetra_url(FDpetra.last)
  end

  test "should show f_dpetra" do
    get f_dpetra_url(@f_dpetra)
    assert_response :success
  end

  test "should get edit" do
    get edit_f_dpetra_url(@f_dpetra)
    assert_response :success
  end

  test "should update f_dpetra" do
    patch f_dpetra_url(@f_dpetra), params: { f_dpetra: {  } }
    assert_redirected_to f_dpetra_url(@f_dpetra)
  end

  test "should destroy f_dpetra" do
    assert_difference('FDpetra.count', -1) do
      delete f_dpetra_url(@f_dpetra)
    end

    assert_redirected_to f_dpetras_url
  end
end
