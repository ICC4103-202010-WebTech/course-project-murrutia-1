require 'test_helper'

class UserOnEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_on_event = user_on_events(:one)
  end

  test "should get index" do
    get user_on_events_url
    assert_response :success
  end

  test "should get new" do
    get new_user_on_event_url
    assert_response :success
  end

  test "should create user_on_event" do
    assert_difference('UserOnEvent.count') do
      post user_on_events_url, params: { user_on_event: {  } }
    end

    assert_redirected_to user_on_event_url(UserOnEvent.last)
  end

  test "should show user_on_event" do
    get user_on_event_url(@user_on_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_on_event_url(@user_on_event)
    assert_response :success
  end

  test "should update user_on_event" do
    patch user_on_event_url(@user_on_event), params: { user_on_event: {  } }
    assert_redirected_to user_on_event_url(@user_on_event)
  end

  test "should destroy user_on_event" do
    assert_difference('UserOnEvent.count', -1) do
      delete user_on_event_url(@user_on_event)
    end

    assert_redirected_to user_on_events_url
  end
end
