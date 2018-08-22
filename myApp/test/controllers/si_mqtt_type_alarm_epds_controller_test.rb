require 'test_helper'

class SiMqttTypeAlarmEpdsControllerTest < ActionController::TestCase
  setup do
    @si_mqtt_type_alarm_epd = si_mqtt_type_alarm_epds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_mqtt_type_alarm_epds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_mqtt_type_alarm_epd" do
    assert_difference('SiMqttTypeAlarmEpd.count') do
      post :create, si_mqtt_type_alarm_epd: { name: @si_mqtt_type_alarm_epd.name, unit: @si_mqtt_type_alarm_epd.unit }
    end

    assert_redirected_to si_mqtt_type_alarm_epd_path(assigns(:si_mqtt_type_alarm_epd))
  end

  test "should show si_mqtt_type_alarm_epd" do
    get :show, id: @si_mqtt_type_alarm_epd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_mqtt_type_alarm_epd
    assert_response :success
  end

  test "should update si_mqtt_type_alarm_epd" do
    patch :update, id: @si_mqtt_type_alarm_epd, si_mqtt_type_alarm_epd: { name: @si_mqtt_type_alarm_epd.name, unit: @si_mqtt_type_alarm_epd.unit }
    assert_redirected_to si_mqtt_type_alarm_epd_path(assigns(:si_mqtt_type_alarm_epd))
  end

  test "should destroy si_mqtt_type_alarm_epd" do
    assert_difference('SiMqttTypeAlarmEpd.count', -1) do
      delete :destroy, id: @si_mqtt_type_alarm_epd
    end

    assert_redirected_to si_mqtt_type_alarm_epds_path
  end
end
