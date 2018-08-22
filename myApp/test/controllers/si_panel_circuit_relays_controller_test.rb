require 'test_helper'

class SiPanelCircuitRelaysControllerTest < ActionController::TestCase
  setup do
    @si_panel_circuit_relay = si_panel_circuit_relays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_panel_circuit_relays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_panel_circuit_relay" do
    assert_difference('SiPanelCircuitRelay.count') do
      post :create, si_panel_circuit_relay: { relay: @si_panel_circuit_relay.relay, si_physicaldevcircuit_id: @si_panel_circuit_relay.si_physicaldevcircuit_id, si_physicaldevpanel_id: @si_panel_circuit_relay.si_physicaldevpanel_id, status: @si_panel_circuit_relay.status }
    end

    assert_redirected_to si_panel_circuit_relay_path(assigns(:si_panel_circuit_relay))
  end

  test "should show si_panel_circuit_relay" do
    get :show, id: @si_panel_circuit_relay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_panel_circuit_relay
    assert_response :success
  end

  test "should update si_panel_circuit_relay" do
    patch :update, id: @si_panel_circuit_relay, si_panel_circuit_relay: { relay: @si_panel_circuit_relay.relay, si_physicaldevcircuit_id: @si_panel_circuit_relay.si_physicaldevcircuit_id, si_physicaldevpanel_id: @si_panel_circuit_relay.si_physicaldevpanel_id, status: @si_panel_circuit_relay.status }
    assert_redirected_to si_panel_circuit_relay_path(assigns(:si_panel_circuit_relay))
  end

  test "should destroy si_panel_circuit_relay" do
    assert_difference('SiPanelCircuitRelay.count', -1) do
      delete :destroy, id: @si_panel_circuit_relay
    end

    assert_redirected_to si_panel_circuit_relays_path
  end
end
