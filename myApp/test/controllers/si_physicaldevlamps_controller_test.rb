require 'test_helper'

class SiPhysicaldevlampsControllerTest < ActionController::TestCase
  setup do
    @si_physicaldevlamp = si_physicaldevlamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_physicaldevlamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_physicaldevlamp" do
    assert_difference('SiPhysicaldevlamp.count') do
      post :create, si_physicaldevlamp: { altitude: @si_physicaldevlamp.altitude, cod_ident: @si_physicaldevlamp.cod_ident, date_data: @si_physicaldevlamp.date_data, date_installation: @si_physicaldevlamp.date_installation, lamp_power: @si_physicaldevlamp.lamp_power, lamppost_brand: @si_physicaldevlamp.lamppost_brand, lamppost_model: @si_physicaldevlamp.lamppost_model, latitude: @si_physicaldevlamp.latitude, lifetime: @si_physicaldevlamp.lifetime, location: @si_physicaldevlamp.location, longitude: @si_physicaldevlamp.longitude, name: @si_physicaldevlamp.name, name_vial: @si_physicaldevlamp.name_vial, number_lamp: @si_physicaldevlamp.number_lamp, si_physicaldevcircuit_id: @si_physicaldevlamp.si_physicaldevcircuit_id, typelight_brand: @si_physicaldevlamp.typelight_brand, typelight_model: @si_physicaldevlamp.typelight_model, typelight_power: @si_physicaldevlamp.typelight_power, v_typelamppost_id: @si_physicaldevlamp.v_typelamppost_id, v_typelight_id: @si_physicaldevlamp.v_typelight_id, v_typephysicalsupport_id: @si_physicaldevlamp.v_typephysicalsupport_id }
    end

    assert_redirected_to si_physicaldevlamp_path(assigns(:si_physicaldevlamp))
  end

  test "should show si_physicaldevlamp" do
    get :show, id: @si_physicaldevlamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_physicaldevlamp
    assert_response :success
  end

  test "should update si_physicaldevlamp" do
    patch :update, id: @si_physicaldevlamp, si_physicaldevlamp: { altitude: @si_physicaldevlamp.altitude, cod_ident: @si_physicaldevlamp.cod_ident, date_data: @si_physicaldevlamp.date_data, date_installation: @si_physicaldevlamp.date_installation, lamp_power: @si_physicaldevlamp.lamp_power, lamppost_brand: @si_physicaldevlamp.lamppost_brand, lamppost_model: @si_physicaldevlamp.lamppost_model, latitude: @si_physicaldevlamp.latitude, lifetime: @si_physicaldevlamp.lifetime, location: @si_physicaldevlamp.location, longitude: @si_physicaldevlamp.longitude, name: @si_physicaldevlamp.name, name_vial: @si_physicaldevlamp.name_vial, number_lamp: @si_physicaldevlamp.number_lamp, si_physicaldevcircuit_id: @si_physicaldevlamp.si_physicaldevcircuit_id, typelight_brand: @si_physicaldevlamp.typelight_brand, typelight_model: @si_physicaldevlamp.typelight_model, typelight_power: @si_physicaldevlamp.typelight_power, v_typelamppost_id: @si_physicaldevlamp.v_typelamppost_id, v_typelight_id: @si_physicaldevlamp.v_typelight_id, v_typephysicalsupport_id: @si_physicaldevlamp.v_typephysicalsupport_id }
    assert_redirected_to si_physicaldevlamp_path(assigns(:si_physicaldevlamp))
  end

  test "should destroy si_physicaldevlamp" do
    assert_difference('SiPhysicaldevlamp.count', -1) do
      delete :destroy, id: @si_physicaldevlamp
    end

    assert_redirected_to si_physicaldevlamps_path
  end
end
