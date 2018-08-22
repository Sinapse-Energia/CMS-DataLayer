require 'test_helper'

class SiRegulatorsControllerTest < ActionController::TestCase
  setup do
    @si_regulator = si_regulators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_regulators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_regulator" do
    assert_difference('SiRegulator.count') do
      post :create, si_regulator: { brand_regulator: @si_regulator.brand_regulator, energy_loss: @si_regulator.energy_loss, id_regulator: @si_regulator.id_regulator, power_regulator: @si_regulator.power_regulator, v_stateregulator_id: @si_regulator.v_stateregulator_id, v_typeregulator_id: @si_regulator.v_typeregulator_id }
    end

    assert_redirected_to si_regulator_path(assigns(:si_regulator))
  end

  test "should show si_regulator" do
    get :show, id: @si_regulator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_regulator
    assert_response :success
  end

  test "should update si_regulator" do
    patch :update, id: @si_regulator, si_regulator: { brand_regulator: @si_regulator.brand_regulator, energy_loss: @si_regulator.energy_loss, id_regulator: @si_regulator.id_regulator, power_regulator: @si_regulator.power_regulator, v_stateregulator_id: @si_regulator.v_stateregulator_id, v_typeregulator_id: @si_regulator.v_typeregulator_id }
    assert_redirected_to si_regulator_path(assigns(:si_regulator))
  end

  test "should destroy si_regulator" do
    assert_difference('SiRegulator.count', -1) do
      delete :destroy, id: @si_regulator
    end

    assert_redirected_to si_regulators_path
  end
end
