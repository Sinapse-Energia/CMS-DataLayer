require 'test_helper'

class SiMqttAlarmApsControllerTest < ActionController::TestCase
  setup do
    @si_mqtt_alarm_ap = si_mqtt_alarm_aps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_mqtt_alarm_aps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_mqtt_alarm_ap" do
    assert_difference('SiMqttAlarmAp.count') do
      post :create, si_mqtt_alarm_ap: { logical_address: @si_mqtt_alarm_ap.logical_address, si_mqtt_type_alarm_ap_id: @si_mqtt_alarm_ap.si_mqtt_type_alarm_ap_id, time_stamp: @si_mqtt_alarm_ap.time_stamp, value: @si_mqtt_alarm_ap.value }
    end

    assert_redirected_to si_mqtt_alarm_ap_path(assigns(:si_mqtt_alarm_ap))
  end

  test "should show si_mqtt_alarm_ap" do
    get :show, id: @si_mqtt_alarm_ap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_mqtt_alarm_ap
    assert_response :success
  end

  test "should update si_mqtt_alarm_ap" do
    patch :update, id: @si_mqtt_alarm_ap, si_mqtt_alarm_ap: { logical_address: @si_mqtt_alarm_ap.logical_address, si_mqtt_type_alarm_ap_id: @si_mqtt_alarm_ap.si_mqtt_type_alarm_ap_id, time_stamp: @si_mqtt_alarm_ap.time_stamp, value: @si_mqtt_alarm_ap.value }
    assert_redirected_to si_mqtt_alarm_ap_path(assigns(:si_mqtt_alarm_ap))
  end

  test "should destroy si_mqtt_alarm_ap" do
    assert_difference('SiMqttAlarmAp.count', -1) do
      delete :destroy, id: @si_mqtt_alarm_ap
    end

    assert_redirected_to si_mqtt_alarm_aps_path
  end
end
