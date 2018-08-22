require 'test_helper'

class CCalendarrulesControllerTest < ActionController::TestCase
  setup do
    @c_calendarrule = c_calendarrules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_calendarrules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_calendarrule" do
    assert_difference('CCalendarrule.count') do
      post :create, c_calendarrule: { always: @c_calendarrule.always, ec_calendar_id: @c_calendarrule.ec_calendar_id, end_date: @c_calendarrule.end_date, ep_controlprogram_id: @c_calendarrule.ep_controlprogram_id, start_date: @c_calendarrule.start_date }
    end

    assert_redirected_to c_calendarrule_path(assigns(:c_calendarrule))
  end

  test "should show c_calendarrule" do
    get :show, id: @c_calendarrule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_calendarrule
    assert_response :success
  end

  test "should update c_calendarrule" do
    patch :update, id: @c_calendarrule, c_calendarrule: { always: @c_calendarrule.always, ec_calendar_id: @c_calendarrule.ec_calendar_id, end_date: @c_calendarrule.end_date, ep_controlprogram_id: @c_calendarrule.ep_controlprogram_id, start_date: @c_calendarrule.start_date }
    assert_redirected_to c_calendarrule_path(assigns(:c_calendarrule))
  end

  test "should destroy c_calendarrule" do
    assert_difference('CCalendarrule.count', -1) do
      delete :destroy, id: @c_calendarrule
    end

    assert_redirected_to c_calendarrules_path
  end
end
