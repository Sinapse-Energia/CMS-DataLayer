require 'test_helper'

class SiAlarmLampsControllerTest < ActionController::TestCase
  setup do
    @si_alarm_lamp = si_alarm_lamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_alarm_lamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_alarm_lamp" do
    assert_difference('SiAlarmLamp.count') do
      post :create, si_alarm_lamp: { ids_list_sms: @si_alarm_lamp.ids_list_sms, ids_lista_email: @si_alarm_lamp.ids_lista_email, name: @si_alarm_lamp.name, notif_email: @si_alarm_lamp.notif_email, notif_sms: @si_alarm_lamp.notif_sms, num_repeat: @si_alarm_lamp.num_repeat, si_mqtt_type_alarm_epd_id: @si_alarm_lamp.si_mqtt_type_alarm_epd_id, threshold: @si_alarm_lamp.threshold, v_threshold_type_id: @si_alarm_lamp.v_threshold_type_id, v_type_alarm_lamp_id: @si_alarm_lamp.v_type_alarm_lamp_id }
    end

    assert_redirected_to si_alarm_lamp_path(assigns(:si_alarm_lamp))
  end

  test "should show si_alarm_lamp" do
    get :show, id: @si_alarm_lamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_alarm_lamp
    assert_response :success
  end

  test "should update si_alarm_lamp" do
    patch :update, id: @si_alarm_lamp, si_alarm_lamp: { ids_list_sms: @si_alarm_lamp.ids_list_sms, ids_lista_email: @si_alarm_lamp.ids_lista_email, name: @si_alarm_lamp.name, notif_email: @si_alarm_lamp.notif_email, notif_sms: @si_alarm_lamp.notif_sms, num_repeat: @si_alarm_lamp.num_repeat, si_mqtt_type_alarm_epd_id: @si_alarm_lamp.si_mqtt_type_alarm_epd_id, threshold: @si_alarm_lamp.threshold, v_threshold_type_id: @si_alarm_lamp.v_threshold_type_id, v_type_alarm_lamp_id: @si_alarm_lamp.v_type_alarm_lamp_id }
    assert_redirected_to si_alarm_lamp_path(assigns(:si_alarm_lamp))
  end

  test "should destroy si_alarm_lamp" do
    assert_difference('SiAlarmLamp.count', -1) do
      delete :destroy, id: @si_alarm_lamp
    end

    assert_redirected_to si_alarm_lamps_path
  end
end
