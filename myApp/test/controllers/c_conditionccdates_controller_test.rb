require 'test_helper'

class CConditionccdatesControllerTest < ActionController::TestCase
  setup do
    @c_conditionccdate = c_conditionccdates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_conditionccdates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_conditionccdate" do
    assert_difference('CConditionccdate.count') do
      post :create, c_conditionccdate: { c_end: @c_conditionccdate.c_end, c_rulescondition_id: @c_conditionccdate.c_rulescondition_id, c_start: @c_conditionccdate.c_start }
    end

    assert_redirected_to c_conditionccdate_path(assigns(:c_conditionccdate))
  end

  test "should show c_conditionccdate" do
    get :show, id: @c_conditionccdate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_conditionccdate
    assert_response :success
  end

  test "should update c_conditionccdate" do
    patch :update, id: @c_conditionccdate, c_conditionccdate: { c_end: @c_conditionccdate.c_end, c_rulescondition_id: @c_conditionccdate.c_rulescondition_id, c_start: @c_conditionccdate.c_start }
    assert_redirected_to c_conditionccdate_path(assigns(:c_conditionccdate))
  end

  test "should destroy c_conditionccdate" do
    assert_difference('CConditionccdate.count', -1) do
      delete :destroy, id: @c_conditionccdate
    end

    assert_redirected_to c_conditionccdates_path
  end
end
