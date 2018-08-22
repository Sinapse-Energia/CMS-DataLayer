require 'test_helper'

class SiAlarmCircuitSiPhysicaldevcircuitsControllerTest < ActionController::TestCase
  setup do
    @si_alarm_circuit_si_physicaldevcircuit = si_alarm_circuit_si_physicaldevcircuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_alarm_circuit_si_physicaldevcircuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_alarm_circuit_si_physicaldevcircuit" do
    assert_difference('SiAlarmCircuitSiPhysicaldevcircuit.count') do
      post :create, si_alarm_circuit_si_physicaldevcircuit: { eg_group_id: @si_alarm_circuit_si_physicaldevcircuit.eg_group_id, is_group: @si_alarm_circuit_si_physicaldevcircuit.is_group, is_single: @si_alarm_circuit_si_physicaldevcircuit.is_single, si_alarm_circuit_id: @si_alarm_circuit_si_physicaldevcircuit.si_alarm_circuit_id, si_physicaldevcircuit_id: @si_alarm_circuit_si_physicaldevcircuit.si_physicaldevcircuit_id }
    end

    assert_redirected_to si_alarm_circuit_si_physicaldevcircuit_path(assigns(:si_alarm_circuit_si_physicaldevcircuit))
  end

  test "should show si_alarm_circuit_si_physicaldevcircuit" do
    get :show, id: @si_alarm_circuit_si_physicaldevcircuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_alarm_circuit_si_physicaldevcircuit
    assert_response :success
  end

  test "should update si_alarm_circuit_si_physicaldevcircuit" do
    patch :update, id: @si_alarm_circuit_si_physicaldevcircuit, si_alarm_circuit_si_physicaldevcircuit: { eg_group_id: @si_alarm_circuit_si_physicaldevcircuit.eg_group_id, is_group: @si_alarm_circuit_si_physicaldevcircuit.is_group, is_single: @si_alarm_circuit_si_physicaldevcircuit.is_single, si_alarm_circuit_id: @si_alarm_circuit_si_physicaldevcircuit.si_alarm_circuit_id, si_physicaldevcircuit_id: @si_alarm_circuit_si_physicaldevcircuit.si_physicaldevcircuit_id }
    assert_redirected_to si_alarm_circuit_si_physicaldevcircuit_path(assigns(:si_alarm_circuit_si_physicaldevcircuit))
  end

  test "should destroy si_alarm_circuit_si_physicaldevcircuit" do
    assert_difference('SiAlarmCircuitSiPhysicaldevcircuit.count', -1) do
      delete :destroy, id: @si_alarm_circuit_si_physicaldevcircuit
    end

    assert_redirected_to si_alarm_circuit_si_physicaldevcircuits_path
  end
end
