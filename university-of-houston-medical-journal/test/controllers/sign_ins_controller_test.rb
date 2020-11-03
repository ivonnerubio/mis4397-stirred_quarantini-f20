require 'test_helper'

class SignInsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sign_in = sign_ins(:one)
  end

  test "should get index" do
    get sign_ins_url
    assert_response :success
  end

  test "should get new" do
    get new_sign_in_url
    assert_response :success
  end

  test "should create sign_in" do
    assert_difference('SignIn.count') do
      post sign_ins_url, params: { sign_in: { string: @sign_in.string, text: @sign_in.text, title: @sign_in.title, web_data: @sign_in.web_data } }
    end

    assert_redirected_to sign_in_url(SignIn.last)
  end

  test "should show sign_in" do
    get sign_in_url(@sign_in)
    assert_response :success
  end

  test "should get edit" do
    get edit_sign_in_url(@sign_in)
    assert_response :success
  end

  test "should update sign_in" do
    patch sign_in_url(@sign_in), params: { sign_in: { string: @sign_in.string, text: @sign_in.text, title: @sign_in.title, web_data: @sign_in.web_data } }
    assert_redirected_to sign_in_url(@sign_in)
  end

  test "should destroy sign_in" do
    assert_difference('SignIn.count', -1) do
      delete sign_in_url(@sign_in)
    end

    assert_redirected_to sign_ins_url
  end
end
