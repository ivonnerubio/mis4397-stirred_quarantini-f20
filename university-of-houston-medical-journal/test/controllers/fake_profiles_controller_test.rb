require 'test_helper'

class FakeProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fake_profile = fake_profiles(:one)
  end

  test "should get index" do
    get fake_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_fake_profile_url
    assert_response :success
  end

  test "should create fake_profile" do
    assert_difference('FakeProfile.count') do
      post fake_profiles_url, params: { fake_profile: { award: @fake_profile.award, background: @fake_profile.background, certification: @fake_profile.certification, education: @fake_profile.education, name: @fake_profile.name } }
    end

    assert_redirected_to fake_profile_url(FakeProfile.last)
  end

  test "should show fake_profile" do
    get fake_profile_url(@fake_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_fake_profile_url(@fake_profile)
    assert_response :success
  end

  test "should update fake_profile" do
    patch fake_profile_url(@fake_profile), params: { fake_profile: { award: @fake_profile.award, background: @fake_profile.background, certification: @fake_profile.certification, education: @fake_profile.education, name: @fake_profile.name } }
    assert_redirected_to fake_profile_url(@fake_profile)
  end

  test "should destroy fake_profile" do
    assert_difference('FakeProfile.count', -1) do
      delete fake_profile_url(@fake_profile)
    end

    assert_redirected_to fake_profiles_url
  end
end
