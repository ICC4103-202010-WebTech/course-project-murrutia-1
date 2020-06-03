require "application_system_test_case"

class UserOnEventsTest < ApplicationSystemTestCase
  setup do
    @user_on_event = user_on_events(:one)
  end

  test "visiting the index" do
    visit user_on_events_url
    assert_selector "h1", text: "User On Events"
  end

  test "creating a User on event" do
    visit user_on_events_url
    click_on "New User On Event"

    click_on "Create User on event"

    assert_text "User on event was successfully created"
    click_on "Back"
  end

  test "updating a User on event" do
    visit user_on_events_url
    click_on "Edit", match: :first

    click_on "Update User on event"

    assert_text "User on event was successfully updated"
    click_on "Back"
  end

  test "destroying a User on event" do
    visit user_on_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User on event was successfully destroyed"
  end
end
