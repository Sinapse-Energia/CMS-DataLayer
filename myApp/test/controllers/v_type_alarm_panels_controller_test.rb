require 'test_helper'

class VTypeAlarmPanelsControllerTest < ActionController::TestCase
  setup do
    @v_type_alarm_panel = v_type_alarm_panels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_type_alarm_panels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_type_alarm_panel" do
    assert_difference('VTypeAlarmPanel.count') do
      post :create, v_type_alarm_panel: { magnitude: @v_type_alarm_panel.magnitude, name: @v_type_alarm_panel.name }
    end

    assert_redirected_to v_type_alarm_panel_path(assigns(:v_type_alarm_panel))
  end

  test "should show v_type_alarm_panel" do
    get :show, id: @v_type_alarm_panel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_type_alarm_panel
    assert_response :success
  end

  test "should update v_type_alarm_panel" do
    patch :update, id: @v_type_alarm_panel, v_type_alarm_panel: { magnitude: @v_type_alarm_panel.magnitude, name: @v_type_alarm_panel.name }
    assert_redirected_to v_type_alarm_panel_path(assigns(:v_type_alarm_panel))
  end

  test "should destroy v_type_alarm_panel" do
    assert_difference('VTypeAlarmPanel.count', -1) do
      delete :destroy, id: @v_type_alarm_panel
    end

    assert_redirected_to v_type_alarm_panels_path
  end
end
