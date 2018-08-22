require 'test_helper'

class FLampmonitorsControllerTest < ActionController::TestCase
  setup do
    @f_lampmonitor = f_lampmonitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_lampmonitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_lampmonitor" do
    assert_difference('FLampmonitor.count') do
      post :create, f_lampmonitor: { ed_logicaldev_id: @f_lampmonitor.ed_logicaldev_id }
    end

    assert_redirected_to f_lampmonitor_path(assigns(:f_lampmonitor))
  end

  test "should show f_lampmonitor" do
    get :show, id: @f_lampmonitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_lampmonitor
    assert_response :success
  end

  test "should update f_lampmonitor" do
    patch :update, id: @f_lampmonitor, f_lampmonitor: { ed_logicaldev_id: @f_lampmonitor.ed_logicaldev_id }
    assert_redirected_to f_lampmonitor_path(assigns(:f_lampmonitor))
  end

  test "should destroy f_lampmonitor" do
    assert_difference('FLampmonitor.count', -1) do
      delete :destroy, id: @f_lampmonitor
    end

    assert_redirected_to f_lampmonitors_path
  end
end
