require 'test_helper'

class UserOnOrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_on_organization = user_on_organizations(:one)
  end

  test "should get index" do
    get user_on_organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_on_organization_url
    assert_response :success
  end

  test "should create user_on_organization" do
    assert_difference('UserOnOrganization.count') do
      post user_on_organizations_url, params: { user_on_organization: {  } }
    end

    assert_redirected_to user_on_organization_url(UserOnOrganization.last)
  end

  test "should show user_on_organization" do
    get user_on_organization_url(@user_on_organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_on_organization_url(@user_on_organization)
    assert_response :success
  end

  test "should update user_on_organization" do
    patch user_on_organization_url(@user_on_organization), params: { user_on_organization: {  } }
    assert_redirected_to user_on_organization_url(@user_on_organization)
  end

  test "should destroy user_on_organization" do
    assert_difference('UserOnOrganization.count', -1) do
      delete user_on_organization_url(@user_on_organization)
    end

    assert_redirected_to user_on_organizations_url
  end
end
