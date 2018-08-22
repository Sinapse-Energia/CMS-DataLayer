require 'test_helper'

class CConditionccdaysControllerTest < ActionController::TestCase
  setup do
    @c_conditionccday = c_conditionccdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_conditionccdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_conditionccday" do
    assert_difference('CConditionccday.count') do
      post :create, c_conditionccday: { c_end: @c_conditionccday.c_end, c_rulescondition_id: @c_conditionccday.c_rulescondition_id, c_start: @c_conditionccday.c_start, friday: @c_conditionccday.friday, monday: @c_conditionccday.monday, saturday: @c_conditionccday.saturday, sunday: @c_conditionccday.sunday, thursday: @c_conditionccday.thursday, tuesday: @c_conditionccday.tuesday, v_occurrence_id: @c_conditionccday.v_occurrence_id, wednesday: @c_conditionccday.wednesday }
    end

    assert_redirected_to c_conditionccday_path(assigns(:c_conditionccday))
  end

  test "should show c_conditionccday" do
    get :show, id: @c_conditionccday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_conditionccday
    assert_response :success
  end

  test "should update c_conditionccday" do
    patch :update, id: @c_conditionccday, c_conditionccday: { c_end: @c_conditionccday.c_end, c_rulescondition_id: @c_conditionccday.c_rulescondition_id, c_start: @c_conditionccday.c_start, friday: @c_conditionccday.friday, monday: @c_conditionccday.monday, saturday: @c_conditionccday.saturday, sunday: @c_conditionccday.sunday, thursday: @c_conditionccday.thursday, tuesday: @c_conditionccday.tuesday, v_occurrence_id: @c_conditionccday.v_occurrence_id, wednesday: @c_conditionccday.wednesday }
    assert_redirected_to c_conditionccday_path(assigns(:c_conditionccday))
  end

  test "should destroy c_conditionccday" do
    assert_difference('CConditionccday.count', -1) do
      delete :destroy, id: @c_conditionccday
    end

    assert_redirected_to c_conditionccdays_path
  end
end
