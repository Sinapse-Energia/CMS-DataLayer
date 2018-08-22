require 'test_helper'

class SiPhysicaldevlampSiPhysicaldevgatewaysControllerTest < ActionController::TestCase
  setup do
    @si_physicaldevlamp_si_physicaldevgateway = si_physicaldevlamp_si_physicaldevgateways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_physicaldevlamp_si_physicaldevgateways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_physicaldevlamp_si_physicaldevgateway" do
    assert_difference('SiPhysicaldevlampSiPhysicaldevgateway.count') do
      post :create, si_physicaldevlamp_si_physicaldevgateway: { distance_lamp_gateway: @si_physicaldevlamp_si_physicaldevgateway.distance_lamp_gateway, distance_level: @si_physicaldevlamp_si_physicaldevgateway.distance_level, si_physicaldevgateway_id: @si_physicaldevlamp_si_physicaldevgateway.si_physicaldevgateway_id, si_physicaldevlamp_id: @si_physicaldevlamp_si_physicaldevgateway.si_physicaldevlamp_id }
    end

    assert_redirected_to si_physicaldevlamp_si_physicaldevgateway_path(assigns(:si_physicaldevlamp_si_physicaldevgateway))
  end

  test "should show si_physicaldevlamp_si_physicaldevgateway" do
    get :show, id: @si_physicaldevlamp_si_physicaldevgateway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_physicaldevlamp_si_physicaldevgateway
    assert_response :success
  end

  test "should update si_physicaldevlamp_si_physicaldevgateway" do
    patch :update, id: @si_physicaldevlamp_si_physicaldevgateway, si_physicaldevlamp_si_physicaldevgateway: { distance_lamp_gateway: @si_physicaldevlamp_si_physicaldevgateway.distance_lamp_gateway, distance_level: @si_physicaldevlamp_si_physicaldevgateway.distance_level, si_physicaldevgateway_id: @si_physicaldevlamp_si_physicaldevgateway.si_physicaldevgateway_id, si_physicaldevlamp_id: @si_physicaldevlamp_si_physicaldevgateway.si_physicaldevlamp_id }
    assert_redirected_to si_physicaldevlamp_si_physicaldevgateway_path(assigns(:si_physicaldevlamp_si_physicaldevgateway))
  end

  test "should destroy si_physicaldevlamp_si_physicaldevgateway" do
    assert_difference('SiPhysicaldevlampSiPhysicaldevgateway.count', -1) do
      delete :destroy, id: @si_physicaldevlamp_si_physicaldevgateway
    end

    assert_redirected_to si_physicaldevlamp_si_physicaldevgateways_path
  end
end
