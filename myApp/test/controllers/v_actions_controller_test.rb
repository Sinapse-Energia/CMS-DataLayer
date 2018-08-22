require 'test_helper'

class VActionsControllerTest < ActionController::TestCase
  setup do
    @v_action = v_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_action" do
    assert_difference('VAction.count') do
      post :create, v_action: { name: @v_action.name }
    end

    assert_redirected_to v_action_path(assigns(:v_action))
  end

  test "should show v_action" do
    get :show, id: @v_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_action
    assert_response :success
  end

  test "should update v_action" do
    patch :update, id: @v_action, v_action: { name: @v_action.name }
    assert_redirected_to v_action_path(assigns(:v_action))
  end

  test "should destroy v_action" do
    assert_difference('VAction.count', -1) do
      delete :destroy, id: @v_action
    end

    assert_redirected_to v_actions_path
  end
end
