require 'test_helper'

class EgGroupsSiPhysicaldevcircuitsControllerTest < ActionController::TestCase
  setup do
    @eg_groups_si_physicaldevcircuit = eg_groups_si_physicaldevcircuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eg_groups_si_physicaldevcircuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eg_groups_si_physicaldevcircuit" do
    assert_difference('EgGroupsSiPhysicaldevcircuit.count') do
      post :create, eg_groups_si_physicaldevcircuit: { eg_group_id: @eg_groups_si_physicaldevcircuit.eg_group_id, si_physicaldevcircuit_id: @eg_groups_si_physicaldevcircuit.si_physicaldevcircuit_id }
    end

    assert_redirected_to eg_groups_si_physicaldevcircuit_path(assigns(:eg_groups_si_physicaldevcircuit))
  end

  test "should show eg_groups_si_physicaldevcircuit" do
    get :show, id: @eg_groups_si_physicaldevcircuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eg_groups_si_physicaldevcircuit
    assert_response :success
  end

  test "should update eg_groups_si_physicaldevcircuit" do
    patch :update, id: @eg_groups_si_physicaldevcircuit, eg_groups_si_physicaldevcircuit: { eg_group_id: @eg_groups_si_physicaldevcircuit.eg_group_id, si_physicaldevcircuit_id: @eg_groups_si_physicaldevcircuit.si_physicaldevcircuit_id }
    assert_redirected_to eg_groups_si_physicaldevcircuit_path(assigns(:eg_groups_si_physicaldevcircuit))
  end

  test "should destroy eg_groups_si_physicaldevcircuit" do
    assert_difference('EgGroupsSiPhysicaldevcircuit.count', -1) do
      delete :destroy, id: @eg_groups_si_physicaldevcircuit
    end

    assert_redirected_to eg_groups_si_physicaldevcircuits_path
  end
end
