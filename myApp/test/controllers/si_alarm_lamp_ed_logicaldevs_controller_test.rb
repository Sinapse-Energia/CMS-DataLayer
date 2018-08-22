require 'test_helper'

class SiAlarmLampEdLogicaldevsControllerTest < ActionController::TestCase
  setup do
    @si_alarm_lamp_ed_logicaldev = si_alarm_lamp_ed_logicaldevs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_alarm_lamp_ed_logicaldevs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_alarm_lamp_ed_logicaldev" do
    assert_difference('SiAlarmLampEdLogicaldev.count') do
      post :create, si_alarm_lamp_ed_logicaldev: { ed_logicaldev_id: @si_alarm_lamp_ed_logicaldev.ed_logicaldev_id, eg_group_id: @si_alarm_lamp_ed_logicaldev.eg_group_id, is_group: @si_alarm_lamp_ed_logicaldev.is_group, is_single: @si_alarm_lamp_ed_logicaldev.is_single, si_alarm_lamp_id: @si_alarm_lamp_ed_logicaldev.si_alarm_lamp_id }
    end

    assert_redirected_to si_alarm_lamp_ed_logicaldev_path(assigns(:si_alarm_lamp_ed_logicaldev))
  end

  test "should show si_alarm_lamp_ed_logicaldev" do
    get :show, id: @si_alarm_lamp_ed_logicaldev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_alarm_lamp_ed_logicaldev
    assert_response :success
  end

  test "should update si_alarm_lamp_ed_logicaldev" do
    patch :update, id: @si_alarm_lamp_ed_logicaldev, si_alarm_lamp_ed_logicaldev: { ed_logicaldev_id: @si_alarm_lamp_ed_logicaldev.ed_logicaldev_id, eg_group_id: @si_alarm_lamp_ed_logicaldev.eg_group_id, is_group: @si_alarm_lamp_ed_logicaldev.is_group, is_single: @si_alarm_lamp_ed_logicaldev.is_single, si_alarm_lamp_id: @si_alarm_lamp_ed_logicaldev.si_alarm_lamp_id }
    assert_redirected_to si_alarm_lamp_ed_logicaldev_path(assigns(:si_alarm_lamp_ed_logicaldev))
  end

  test "should destroy si_alarm_lamp_ed_logicaldev" do
    assert_difference('SiAlarmLampEdLogicaldev.count', -1) do
      delete :destroy, id: @si_alarm_lamp_ed_logicaldev
    end

    assert_redirected_to si_alarm_lamp_ed_logicaldevs_path
  end
end
