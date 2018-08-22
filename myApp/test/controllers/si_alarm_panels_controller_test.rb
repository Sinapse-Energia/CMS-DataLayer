require 'test_helper'

class SiAlarmPanelsControllerTest < ActionController::TestCase
  setup do
    @si_alarm_panel = si_alarm_panels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_alarm_panels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_alarm_panel" do
    assert_difference('SiAlarmPanel.count') do
      post :create, si_alarm_panel: { ids_list_sms: @si_alarm_panel.ids_list_sms, ids_lista_email: @si_alarm_panel.ids_lista_email, name: @si_alarm_panel.name, notif_email: @si_alarm_panel.notif_email, notif_sms: @si_alarm_panel.notif_sms, num_repeat: @si_alarm_panel.num_repeat, si_mqtt_type_alarm_ap_id: @si_alarm_panel.si_mqtt_type_alarm_ap_id, threshold: @si_alarm_panel.threshold, v_threshold_type_id: @si_alarm_panel.v_threshold_type_id, v_type_alarm_panel_id: @si_alarm_panel.v_type_alarm_panel_id }
    end

    assert_redirected_to si_alarm_panel_path(assigns(:si_alarm_panel))
  end

  test "should show si_alarm_panel" do
    get :show, id: @si_alarm_panel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_alarm_panel
    assert_response :success
  end

  test "should update si_alarm_panel" do
    patch :update, id: @si_alarm_panel, si_alarm_panel: { ids_list_sms: @si_alarm_panel.ids_list_sms, ids_lista_email: @si_alarm_panel.ids_lista_email, name: @si_alarm_panel.name, notif_email: @si_alarm_panel.notif_email, notif_sms: @si_alarm_panel.notif_sms, num_repeat: @si_alarm_panel.num_repeat, si_mqtt_type_alarm_ap_id: @si_alarm_panel.si_mqtt_type_alarm_ap_id, threshold: @si_alarm_panel.threshold, v_threshold_type_id: @si_alarm_panel.v_threshold_type_id, v_type_alarm_panel_id: @si_alarm_panel.v_type_alarm_panel_id }
    assert_redirected_to si_alarm_panel_path(assigns(:si_alarm_panel))
  end

  test "should destroy si_alarm_panel" do
    assert_difference('SiAlarmPanel.count', -1) do
      delete :destroy, id: @si_alarm_panel
    end

    assert_redirected_to si_alarm_panels_path
  end
end
