require 'test_helper'

class AdescFlampactuatorsControllerTest < ActionController::TestCase
  setup do
    @adesc_flampactuator = adesc_flampactuators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_flampactuators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_flampactuator" do
    assert_difference('AdescFlampactuator.count') do
      post :create, adesc_flampactuator: { descr: @adesc_flampactuator.descr, enumeration: @adesc_flampactuator.enumeration, lightcommand: @adesc_flampactuator.lightcommand, maxinstances: @adesc_flampactuator.maxinstances, maxvalue: @adesc_flampactuator.maxvalue, minvalue: @adesc_flampactuator.minvalue, name: @adesc_flampactuator.name, read_only: @adesc_flampactuator.read_only, regex: @adesc_flampactuator.regex, unit: @adesc_flampactuator.unit, v_storagetype_id: @adesc_flampactuator.v_storagetype_id }
    end

    assert_redirected_to adesc_flampactuator_path(assigns(:adesc_flampactuator))
  end

  test "should show adesc_flampactuator" do
    get :show, id: @adesc_flampactuator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_flampactuator
    assert_response :success
  end

  test "should update adesc_flampactuator" do
    patch :update, id: @adesc_flampactuator, adesc_flampactuator: { descr: @adesc_flampactuator.descr, enumeration: @adesc_flampactuator.enumeration, lightcommand: @adesc_flampactuator.lightcommand, maxinstances: @adesc_flampactuator.maxinstances, maxvalue: @adesc_flampactuator.maxvalue, minvalue: @adesc_flampactuator.minvalue, name: @adesc_flampactuator.name, read_only: @adesc_flampactuator.read_only, regex: @adesc_flampactuator.regex, unit: @adesc_flampactuator.unit, v_storagetype_id: @adesc_flampactuator.v_storagetype_id }
    assert_redirected_to adesc_flampactuator_path(assigns(:adesc_flampactuator))
  end

  test "should destroy adesc_flampactuator" do
    assert_difference('AdescFlampactuator.count', -1) do
      delete :destroy, id: @adesc_flampactuator
    end

    assert_redirected_to adesc_flampactuators_path
  end
end
