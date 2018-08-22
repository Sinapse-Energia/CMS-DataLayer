require 'test_helper'

class SiPhysicaldevcircuitsControllerTest < ActionController::TestCase
  setup do
    @si_physicaldevcircuit = si_physicaldevcircuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_physicaldevcircuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_physicaldevcircuit" do
    assert_difference('SiPhysicaldevcircuit.count') do
      post :create, si_physicaldevcircuit: { canalization_type: @si_physicaldevcircuit.canalization_type, circuit_number: @si_physicaldevcircuit.circuit_number, conductor_section: @si_physicaldevcircuit.conductor_section, conductor_type: @si_physicaldevcircuit.conductor_type, differencial: @si_physicaldevcircuit.differencial, magnetotermic: @si_physicaldevcircuit.magnetotermic, name: @si_physicaldevcircuit.name, si_physicaldevpanel_id: @si_physicaldevcircuit.si_physicaldevpanel_id, telemanagement: @si_physicaldevcircuit.telemanagement, type_circuit: @si_physicaldevcircuit.type_circuit }
    end

    assert_redirected_to si_physicaldevcircuit_path(assigns(:si_physicaldevcircuit))
  end

  test "should show si_physicaldevcircuit" do
    get :show, id: @si_physicaldevcircuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_physicaldevcircuit
    assert_response :success
  end

  test "should update si_physicaldevcircuit" do
    patch :update, id: @si_physicaldevcircuit, si_physicaldevcircuit: { canalization_type: @si_physicaldevcircuit.canalization_type, circuit_number: @si_physicaldevcircuit.circuit_number, conductor_section: @si_physicaldevcircuit.conductor_section, conductor_type: @si_physicaldevcircuit.conductor_type, differencial: @si_physicaldevcircuit.differencial, magnetotermic: @si_physicaldevcircuit.magnetotermic, name: @si_physicaldevcircuit.name, si_physicaldevpanel_id: @si_physicaldevcircuit.si_physicaldevpanel_id, telemanagement: @si_physicaldevcircuit.telemanagement, type_circuit: @si_physicaldevcircuit.type_circuit }
    assert_redirected_to si_physicaldevcircuit_path(assigns(:si_physicaldevcircuit))
  end

  test "should destroy si_physicaldevcircuit" do
    assert_difference('SiPhysicaldevcircuit.count', -1) do
      delete :destroy, id: @si_physicaldevcircuit
    end

    assert_redirected_to si_physicaldevcircuits_path
  end
end
