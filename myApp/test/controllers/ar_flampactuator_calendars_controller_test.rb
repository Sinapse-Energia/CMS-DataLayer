require 'test_helper'

class ArFlampactuatorCalendarsControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_calendar = ar_flampactuator_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_calendar" do
    assert_difference('ArFlampactuatorCalendar.count') do
      post :create, ar_flampactuator_calendar: { ec_calendar_id: @ar_flampactuator_calendar.ec_calendar_id, eg_group_id: @ar_flampactuator_calendar.eg_group_id, f_lampactuator_id: @ar_flampactuator_calendar.f_lampactuator_id, is_group: @ar_flampactuator_calendar.is_group, is_single: @ar_flampactuator_calendar.is_single }
    end

    assert_redirected_to ar_flampactuator_calendar_path(assigns(:ar_flampactuator_calendar))
  end

  test "should show ar_flampactuator_calendar" do
    get :show, id: @ar_flampactuator_calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_calendar
    assert_response :success
  end

  test "should update ar_flampactuator_calendar" do
    patch :update, id: @ar_flampactuator_calendar, ar_flampactuator_calendar: { ec_calendar_id: @ar_flampactuator_calendar.ec_calendar_id, eg_group_id: @ar_flampactuator_calendar.eg_group_id, f_lampactuator_id: @ar_flampactuator_calendar.f_lampactuator_id, is_group: @ar_flampactuator_calendar.is_group, is_single: @ar_flampactuator_calendar.is_single }
    assert_redirected_to ar_flampactuator_calendar_path(assigns(:ar_flampactuator_calendar))
  end

  test "should destroy ar_flampactuator_calendar" do
    assert_difference('ArFlampactuatorCalendar.count', -1) do
      delete :destroy, id: @ar_flampactuator_calendar
    end

    assert_redirected_to ar_flampactuator_calendars_path
  end
end
