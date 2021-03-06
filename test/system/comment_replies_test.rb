require "application_system_test_case"

class CommentRepliesTest < ApplicationSystemTestCase
  setup do
    @comment_reply = comment_replies(:one)
  end

  test "visiting the index" do
    visit comment_replies_url
    assert_selector "h1", text: "Comment Replies"
  end

  test "creating a Comment reply" do
    visit comment_replies_url
    click_on "New Comment Reply"

    click_on "Create Comment reply"

    assert_text "Comment reply was successfully created"
    click_on "Back"
  end

  test "updating a Comment reply" do
    visit comment_replies_url
    click_on "Edit", match: :first

    click_on "Update Comment reply"

    assert_text "Comment reply was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment reply" do
    visit comment_replies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment reply was successfully destroyed"
  end
end
