require 'test_helper'

class VTypeAlarmCircuitsControllerTest < ActionController::TestCase
  setup do
    @v_type_alarm_circuit = v_type_alarm_circuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_type_alarm_circuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_type_alarm_circuit" do
    assert_difference('VTypeAlarmCircuit.count') do
      post :create, v_type_alarm_circuit: { name: @v_type_alarm_circuit.name }
    end

    assert_redirected_to v_type_alarm_circuit_path(assigns(:v_type_alarm_circuit))
  end

  test "should show v_type_alarm_circuit" do
    get :show, id: @v_type_alarm_circuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_type_alarm_circuit
    assert_response :success
  end

  test "should update v_type_alarm_circuit" do
    patch :update, id: @v_type_alarm_circuit, v_type_alarm_circuit: { name: @v_type_alarm_circuit.name }
    assert_redirected_to v_type_alarm_circuit_path(assigns(:v_type_alarm_circuit))
  end

  test "should destroy v_type_alarm_circuit" do
    assert_difference('VTypeAlarmCircuit.count', -1) do
      delete :destroy, id: @v_type_alarm_circuit
    end

    assert_redirected_to v_type_alarm_circuits_path
  end
end
