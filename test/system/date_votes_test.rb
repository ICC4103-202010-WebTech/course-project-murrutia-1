require "application_system_test_case"

class DateVotesTest < ApplicationSystemTestCase
  setup do
    @date_vote = date_votes(:one)
  end

  test "visiting the index" do
    visit date_votes_url
    assert_selector "h1", text: "Date Votes"
  end

  test "creating a Date vote" do
    visit date_votes_url
    click_on "New Date Vote"

    click_on "Create Date vote"

    assert_text "Date vote was successfully created"
    click_on "Back"
  end

  test "updating a Date vote" do
    visit date_votes_url
    click_on "Edit", match: :first

    click_on "Update Date vote"

    assert_text "Date vote was successfully updated"
    click_on "Back"
  end

  test "destroying a Date vote" do
    visit date_votes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Date vote was successfully destroyed"
  end
end
