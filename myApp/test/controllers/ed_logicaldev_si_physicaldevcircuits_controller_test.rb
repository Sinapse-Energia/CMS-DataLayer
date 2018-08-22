require 'test_helper'

class EdLogicaldevSiPhysicaldevcircuitsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_si_physicaldevcircuit = ed_logicaldev_si_physicaldevcircuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_si_physicaldevcircuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_si_physicaldevcircuit" do
    assert_difference('EdLogicaldevSiPhysicaldevcircuit.count') do
      post :create, ed_logicaldev_si_physicaldevcircuit: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevcircuit.ed_logicaldev_id, si_physicaldevcircuit_id: @ed_logicaldev_si_physicaldevcircuit.si_physicaldevcircuit_id }
    end

    assert_redirected_to ed_logicaldev_si_physicaldevcircuit_path(assigns(:ed_logicaldev_si_physicaldevcircuit))
  end

  test "should show ed_logicaldev_si_physicaldevcircuit" do
    get :show, id: @ed_logicaldev_si_physicaldevcircuit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_si_physicaldevcircuit
    assert_response :success
  end

  test "should update ed_logicaldev_si_physicaldevcircuit" do
    patch :update, id: @ed_logicaldev_si_physicaldevcircuit, ed_logicaldev_si_physicaldevcircuit: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevcircuit.ed_logicaldev_id, si_physicaldevcircuit_id: @ed_logicaldev_si_physicaldevcircuit.si_physicaldevcircuit_id }
    assert_redirected_to ed_logicaldev_si_physicaldevcircuit_path(assigns(:ed_logicaldev_si_physicaldevcircuit))
  end

  test "should destroy ed_logicaldev_si_physicaldevcircuit" do
    assert_difference('EdLogicaldevSiPhysicaldevcircuit.count', -1) do
      delete :destroy, id: @ed_logicaldev_si_physicaldevcircuit
    end

    assert_redirected_to ed_logicaldev_si_physicaldevcircuits_path
  end
end
