require 'test_helper'

class EdLogicaldevSiPhysicaldevgatewaysControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_si_physicaldevgateway = ed_logicaldev_si_physicaldevgateways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_si_physicaldevgateways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_si_physicaldevgateway" do
    assert_difference('EdLogicaldevSiPhysicaldevgateway.count') do
      post :create, ed_logicaldev_si_physicaldevgateway: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevgateway.ed_logicaldev_id, si_physicaldevgateway_id: @ed_logicaldev_si_physicaldevgateway.si_physicaldevgateway_id }
    end

    assert_redirected_to ed_logicaldev_si_physicaldevgateway_path(assigns(:ed_logicaldev_si_physicaldevgateway))
  end

  test "should show ed_logicaldev_si_physicaldevgateway" do
    get :show, id: @ed_logicaldev_si_physicaldevgateway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_si_physicaldevgateway
    assert_response :success
  end

  test "should update ed_logicaldev_si_physicaldevgateway" do
    patch :update, id: @ed_logicaldev_si_physicaldevgateway, ed_logicaldev_si_physicaldevgateway: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevgateway.ed_logicaldev_id, si_physicaldevgateway_id: @ed_logicaldev_si_physicaldevgateway.si_physicaldevgateway_id }
    assert_redirected_to ed_logicaldev_si_physicaldevgateway_path(assigns(:ed_logicaldev_si_physicaldevgateway))
  end

  test "should destroy ed_logicaldev_si_physicaldevgateway" do
    assert_difference('EdLogicaldevSiPhysicaldevgateway.count', -1) do
      delete :destroy, id: @ed_logicaldev_si_physicaldevgateway
    end

    assert_redirected_to ed_logicaldev_si_physicaldevgateways_path
  end
end
