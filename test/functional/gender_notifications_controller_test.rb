require 'test_helper'

class GenderNotificationsControllerTest < ActionController::TestCase
  setup do
    @gender_notification = gender_notifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gender_notifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gender_notification" do
    assert_difference('GenderNotification.count') do
      post :create, gender_notification: { present_relation: @gender_notification.present_relation, reverse_relation: @gender_notification.reverse_relation, user_gender: @gender_notification.user_gender }
    end

    assert_redirected_to gender_notification_path(assigns(:gender_notification))
  end

  test "should show gender_notification" do
    get :show, id: @gender_notification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gender_notification
    assert_response :success
  end

  test "should update gender_notification" do
    put :update, id: @gender_notification, gender_notification: { present_relation: @gender_notification.present_relation, reverse_relation: @gender_notification.reverse_relation, user_gender: @gender_notification.user_gender }
    assert_redirected_to gender_notification_path(assigns(:gender_notification))
  end

  test "should destroy gender_notification" do
    assert_difference('GenderNotification.count', -1) do
      delete :destroy, id: @gender_notification
    end

    assert_redirected_to gender_notifications_path
  end
end
