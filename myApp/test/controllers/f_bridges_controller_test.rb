require 'test_helper'

class FBridgesControllerTest < ActionController::TestCase
  setup do
    @f_bridge = f_bridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_bridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_bridge" do
    assert_difference('FBridge.count') do
      post :create, f_bridge: { ed_logicaldev_id: @f_bridge.ed_logicaldev_id }
    end

    assert_redirected_to f_bridge_path(assigns(:f_bridge))
  end

  test "should show f_bridge" do
    get :show, id: @f_bridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_bridge
    assert_response :success
  end

  test "should update f_bridge" do
    patch :update, id: @f_bridge, f_bridge: { ed_logicaldev_id: @f_bridge.ed_logicaldev_id }
    assert_redirected_to f_bridge_path(assigns(:f_bridge))
  end

  test "should destroy f_bridge" do
    assert_difference('FBridge.count', -1) do
      delete :destroy, id: @f_bridge
    end

    assert_redirected_to f_bridges_path
  end
end
