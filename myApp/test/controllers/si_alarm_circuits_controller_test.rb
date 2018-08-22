require 'test_helper'

class SiAlarmCircuitsControllerTest < ActionController::TestCase
  setup do
    @si_alarm_circuit = si_alarm_circuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_alarm_circuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_alarm_circuit" do
    assert_difference('SiAlarmCircuit.count') do
      post :create, si_alarm_circuit: { ids_list_sms: @si_alarm_circuit.ids_list_sms, ids_lista_email: @si_alarm_circuit.ids_lista_email, name: @si_alarm_circuit.name, notif_email: @si_alarm_circuit.notif_email, notif_sms: @si_alarm_circuit.notif_sms, num_repeat: @si_alarm_circuit.num_repeat, threshold: @si_alarm_circuit.threshold, v_type_alarm_circuit_id: @si_alarm_circuit.v_type_alarm_circuit_id }
    end

    assert_redirected_to si_alarm_circuit_path(assigns(:si_alarm_circuit))
  end

  test "should show si_alarm_circuit" do
    get :show, id: @si_alarm_circuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_alarm_circuit
    assert_response :success
  end

  test "should update si_alarm_circuit" do
    patch :update, id: @si_alarm_circuit, si_alarm_circuit: { ids_list_sms: @si_alarm_circuit.ids_list_sms, ids_lista_email: @si_alarm_circuit.ids_lista_email, name: @si_alarm_circuit.name, notif_email: @si_alarm_circuit.notif_email, notif_sms: @si_alarm_circuit.notif_sms, num_repeat: @si_alarm_circuit.num_repeat, threshold: @si_alarm_circuit.threshold, v_type_alarm_circuit_id: @si_alarm_circuit.v_type_alarm_circuit_id }
    assert_redirected_to si_alarm_circuit_path(assigns(:si_alarm_circuit))
  end

  test "should destroy si_alarm_circuit" do
    assert_difference('SiAlarmCircuit.count', -1) do
      delete :destroy, id: @si_alarm_circuit
    end

    assert_redirected_to si_alarm_circuits_path
  end
end
