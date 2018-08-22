require 'test_helper'

class SiPhysicaldevgatewaysControllerTest < ActionController::TestCase
  setup do
    @si_physicaldevgateway = si_physicaldevgateways(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_physicaldevgateways)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_physicaldevgateway" do
    assert_difference('SiPhysicaldevgateway.count') do
      post :create, si_physicaldevgateway: { altitude: @si_physicaldevgateway.altitude, date_installation: @si_physicaldevgateway.date_installation, latitude: @si_physicaldevgateway.latitude, longitude: @si_physicaldevgateway.longitude, name: @si_physicaldevgateway.name, name_vial: @si_physicaldevgateway.name_vial, number_vial: @si_physicaldevgateway.number_vial }
    end

    assert_redirected_to si_physicaldevgateway_path(assigns(:si_physicaldevgateway))
  end

  test "should show si_physicaldevgateway" do
    get :show, id: @si_physicaldevgateway
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_physicaldevgateway
    assert_response :success
  end

  test "should update si_physicaldevgateway" do
    patch :update, id: @si_physicaldevgateway, si_physicaldevgateway: { altitude: @si_physicaldevgateway.altitude, date_installation: @si_physicaldevgateway.date_installation, latitude: @si_physicaldevgateway.latitude, longitude: @si_physicaldevgateway.longitude, name: @si_physicaldevgateway.name, name_vial: @si_physicaldevgateway.name_vial, number_vial: @si_physicaldevgateway.number_vial }
    assert_redirected_to si_physicaldevgateway_path(assigns(:si_physicaldevgateway))
  end

  test "should destroy si_physicaldevgateway" do
    assert_difference('SiPhysicaldevgateway.count', -1) do
      delete :destroy, id: @si_physicaldevgateway
    end

    assert_redirected_to si_physicaldevgateways_path
  end
end
