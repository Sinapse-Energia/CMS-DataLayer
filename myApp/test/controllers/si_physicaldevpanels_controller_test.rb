require 'test_helper'

class SiPhysicaldevpanelsControllerTest < ActionController::TestCase
  setup do
    @si_physicaldevpanel = si_physicaldevpanels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_physicaldevpanels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_physicaldevpanel" do
    assert_difference('SiPhysicaldevpanel.count') do
      post :create, si_physicaldevpanel: { altitude: @si_physicaldevpanel.altitude, clock_brand: @si_physicaldevpanel.clock_brand, clock_model: @si_physicaldevpanel.clock_model, cod_ident: @si_physicaldevpanel.cod_ident, cod_module: @si_physicaldevpanel.cod_module, date_data: @si_physicaldevpanel.date_data, date_installation: @si_physicaldevpanel.date_installation, latitude: @si_physicaldevpanel.latitude, location: @si_physicaldevpanel.location, longitude: @si_physicaldevpanel.longitude, name: @si_physicaldevpanel.name, name_vial: @si_physicaldevpanel.name_vial, number_circuit: @si_physicaldevpanel.number_circuit, number_countpower: @si_physicaldevpanel.number_countpower, number_supply: @si_physicaldevpanel.number_supply, number_vial: @si_physicaldevpanel.number_vial, power_contracted: @si_physicaldevpanel.power_contracted, power_installed: @si_physicaldevpanel.power_installed, protection_diff: @si_physicaldevpanel.protection_diff, protection_mag: @si_physicaldevpanel.protection_mag, switch_general: @si_physicaldevpanel.switch_general, v_typecommand_id: @si_physicaldevpanel.v_typecommand_id }
    end

    assert_redirected_to si_physicaldevpanel_path(assigns(:si_physicaldevpanel))
  end

  test "should show si_physicaldevpanel" do
    get :show, id: @si_physicaldevpanel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_physicaldevpanel
    assert_response :success
  end

  test "should update si_physicaldevpanel" do
    patch :update, id: @si_physicaldevpanel, si_physicaldevpanel: { altitude: @si_physicaldevpanel.altitude, clock_brand: @si_physicaldevpanel.clock_brand, clock_model: @si_physicaldevpanel.clock_model, cod_ident: @si_physicaldevpanel.cod_ident, cod_module: @si_physicaldevpanel.cod_module, date_data: @si_physicaldevpanel.date_data, date_installation: @si_physicaldevpanel.date_installation, latitude: @si_physicaldevpanel.latitude, location: @si_physicaldevpanel.location, longitude: @si_physicaldevpanel.longitude, name: @si_physicaldevpanel.name, name_vial: @si_physicaldevpanel.name_vial, number_circuit: @si_physicaldevpanel.number_circuit, number_countpower: @si_physicaldevpanel.number_countpower, number_supply: @si_physicaldevpanel.number_supply, number_vial: @si_physicaldevpanel.number_vial, power_contracted: @si_physicaldevpanel.power_contracted, power_installed: @si_physicaldevpanel.power_installed, protection_diff: @si_physicaldevpanel.protection_diff, protection_mag: @si_physicaldevpanel.protection_mag, switch_general: @si_physicaldevpanel.switch_general, v_typecommand_id: @si_physicaldevpanel.v_typecommand_id }
    assert_redirected_to si_physicaldevpanel_path(assigns(:si_physicaldevpanel))
  end

  test "should destroy si_physicaldevpanel" do
    assert_difference('SiPhysicaldevpanel.count', -1) do
      delete :destroy, id: @si_physicaldevpanel
    end

    assert_redirected_to si_physicaldevpanels_path
  end
end
