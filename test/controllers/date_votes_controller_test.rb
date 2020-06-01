require 'test_helper'

class DateVotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_vote = date_votes(:one)
  end

  test "should get index" do
    get date_votes_url
    assert_response :success
  end

  test "should get new" do
    get new_date_vote_url
    assert_response :success
  end

  test "should create date_vote" do
    assert_difference('DateVote.count') do
      post date_votes_url, params: { date_vote: {  } }
    end

    assert_redirected_to date_vote_url(DateVote.last)
  end

  test "should show date_vote" do
    get date_vote_url(@date_vote)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_vote_url(@date_vote)
    assert_response :success
  end

  test "should update date_vote" do
    patch date_vote_url(@date_vote), params: { date_vote: {  } }
    assert_redirected_to date_vote_url(@date_vote)
  end

  test "should destroy date_vote" do
    assert_difference('DateVote.count', -1) do
      delete date_vote_url(@date_vote)
    end

    assert_redirected_to date_votes_url
  end
end
