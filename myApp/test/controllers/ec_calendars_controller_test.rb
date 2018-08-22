require 'test_helper'

class EcCalendarsControllerTest < ActionController::TestCase
  setup do
    @ec_calendar = ec_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ec_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ec_calendar" do
    assert_difference('EcCalendar.count') do
      post :create, ec_calendar: { actived: @ec_calendar.actived, address: @ec_calendar.address, ep_controlprogram_id: @ec_calendar.ep_controlprogram_id, seqbridge: @ec_calendar.seqbridge, seqcms: @ec_calendar.seqcms }
    end

    assert_redirected_to ec_calendar_path(assigns(:ec_calendar))
  end

  test "should show ec_calendar" do
    get :show, id: @ec_calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ec_calendar
    assert_response :success
  end

  test "should update ec_calendar" do
    patch :update, id: @ec_calendar, ec_calendar: { actived: @ec_calendar.actived, address: @ec_calendar.address, ep_controlprogram_id: @ec_calendar.ep_controlprogram_id, seqbridge: @ec_calendar.seqbridge, seqcms: @ec_calendar.seqcms }
    assert_redirected_to ec_calendar_path(assigns(:ec_calendar))
  end

  test "should destroy ec_calendar" do
    assert_difference('EcCalendar.count', -1) do
      delete :destroy, id: @ec_calendar
    end

    assert_redirected_to ec_calendars_path
  end
end
