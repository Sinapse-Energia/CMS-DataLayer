require 'test_helper'

class EdLogicaldevsVActionsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldevs_v_action = ed_logicaldevs_v_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldevs_v_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldevs_v_action" do
    assert_difference('EdLogicaldevsVAction.count') do
      post :create, ed_logicaldevs_v_action: { ed_logicaldev_id: @ed_logicaldevs_v_action.ed_logicaldev_id, v_action_id: @ed_logicaldevs_v_action.v_action_id }
    end

    assert_redirected_to ed_logicaldevs_v_action_path(assigns(:ed_logicaldevs_v_action))
  end

  test "should show ed_logicaldevs_v_action" do
    get :show, id: @ed_logicaldevs_v_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldevs_v_action
    assert_response :success
  end

  test "should update ed_logicaldevs_v_action" do
    patch :update, id: @ed_logicaldevs_v_action, ed_logicaldevs_v_action: { ed_logicaldev_id: @ed_logicaldevs_v_action.ed_logicaldev_id, v_action_id: @ed_logicaldevs_v_action.v_action_id }
    assert_redirected_to ed_logicaldevs_v_action_path(assigns(:ed_logicaldevs_v_action))
  end

  test "should destroy ed_logicaldevs_v_action" do
    assert_difference('EdLogicaldevsVAction.count', -1) do
      delete :destroy, id: @ed_logicaldevs_v_action
    end

    assert_redirected_to ed_logicaldevs_v_actions_path
  end
end
