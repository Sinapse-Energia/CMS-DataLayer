require 'test_helper'

class CRulesconditionsControllerTest < ActionController::TestCase
  setup do
    @c_rulescondition = c_rulesconditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_rulesconditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_rulescondition" do
    assert_difference('CRulescondition.count') do
      post :create, c_rulescondition: { c_calendarrule_id: @c_rulescondition.c_calendarrule_id, v_ruletypecondition_id: @c_rulescondition.v_ruletypecondition_id }
    end

    assert_redirected_to c_rulescondition_path(assigns(:c_rulescondition))
  end

  test "should show c_rulescondition" do
    get :show, id: @c_rulescondition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_rulescondition
    assert_response :success
  end

  test "should update c_rulescondition" do
    patch :update, id: @c_rulescondition, c_rulescondition: { c_calendarrule_id: @c_rulescondition.c_calendarrule_id, v_ruletypecondition_id: @c_rulescondition.v_ruletypecondition_id }
    assert_redirected_to c_rulescondition_path(assigns(:c_rulescondition))
  end

  test "should destroy c_rulescondition" do
    assert_difference('CRulescondition.count', -1) do
      delete :destroy, id: @c_rulescondition
    end

    assert_redirected_to c_rulesconditions_path
  end
end
