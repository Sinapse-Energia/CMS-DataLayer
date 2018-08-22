require 'test_helper'

class EdLogicaldevsSiRegulatorsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldevs_si_regulator = ed_logicaldevs_si_regulators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldevs_si_regulators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldevs_si_regulator" do
    assert_difference('EdLogicaldevsSiRegulator.count') do
      post :create, ed_logicaldevs_si_regulator: { ed_logicaldev_id: @ed_logicaldevs_si_regulator.ed_logicaldev_id, si_regulator_id: @ed_logicaldevs_si_regulator.si_regulator_id }
    end

    assert_redirected_to ed_logicaldevs_si_regulator_path(assigns(:ed_logicaldevs_si_regulator))
  end

  test "should show ed_logicaldevs_si_regulator" do
    get :show, id: @ed_logicaldevs_si_regulator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldevs_si_regulator
    assert_response :success
  end

  test "should update ed_logicaldevs_si_regulator" do
    patch :update, id: @ed_logicaldevs_si_regulator, ed_logicaldevs_si_regulator: { ed_logicaldev_id: @ed_logicaldevs_si_regulator.ed_logicaldev_id, si_regulator_id: @ed_logicaldevs_si_regulator.si_regulator_id }
    assert_redirected_to ed_logicaldevs_si_regulator_path(assigns(:ed_logicaldevs_si_regulator))
  end

  test "should destroy ed_logicaldevs_si_regulator" do
    assert_difference('EdLogicaldevsSiRegulator.count', -1) do
      delete :destroy, id: @ed_logicaldevs_si_regulator
    end

    assert_redirected_to ed_logicaldevs_si_regulators_path
  end
end
