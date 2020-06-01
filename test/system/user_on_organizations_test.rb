require "application_system_test_case"

class UserOnOrganizationsTest < ApplicationSystemTestCase
  setup do
    @user_on_organization = user_on_organizations(:one)
  end

  test "visiting the index" do
    visit user_on_organizations_url
    assert_selector "h1", text: "User On Organizations"
  end

  test "creating a User on organization" do
    visit user_on_organizations_url
    click_on "New User On Organization"

    click_on "Create User on organization"

    assert_text "User on organization was successfully created"
    click_on "Back"
  end

  test "updating a User on organization" do
    visit user_on_organizations_url
    click_on "Edit", match: :first

    click_on "Update User on organization"

    assert_text "User on organization was successfully updated"
    click_on "Back"
  end

  test "destroying a User on organization" do
    visit user_on_organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User on organization was successfully destroyed"
  end
end
