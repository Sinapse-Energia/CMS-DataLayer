require 'test_helper'

class AdescFbasicsControllerTest < ActionController::TestCase
  setup do
    @adesc_fbasic = adesc_fbasics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_fbasics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_fbasic" do
    assert_difference('AdescFbasic.count') do
      post :create, adesc_fbasic: { descr: @adesc_fbasic.descr, enumeration: @adesc_fbasic.enumeration, lightcommand: @adesc_fbasic.lightcommand, maxinstances: @adesc_fbasic.maxinstances, maxvalue: @adesc_fbasic.maxvalue, minvalue: @adesc_fbasic.minvalue, name: @adesc_fbasic.name, read_only: @adesc_fbasic.read_only, regex: @adesc_fbasic.regex, unit: @adesc_fbasic.unit, v_storagetype_id: @adesc_fbasic.v_storagetype_id }
    end

    assert_redirected_to adesc_fbasic_path(assigns(:adesc_fbasic))
  end

  test "should show adesc_fbasic" do
    get :show, id: @adesc_fbasic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_fbasic
    assert_response :success
  end

  test "should update adesc_fbasic" do
    patch :update, id: @adesc_fbasic, adesc_fbasic: { descr: @adesc_fbasic.descr, enumeration: @adesc_fbasic.enumeration, lightcommand: @adesc_fbasic.lightcommand, maxinstances: @adesc_fbasic.maxinstances, maxvalue: @adesc_fbasic.maxvalue, minvalue: @adesc_fbasic.minvalue, name: @adesc_fbasic.name, read_only: @adesc_fbasic.read_only, regex: @adesc_fbasic.regex, unit: @adesc_fbasic.unit, v_storagetype_id: @adesc_fbasic.v_storagetype_id }
    assert_redirected_to adesc_fbasic_path(assigns(:adesc_fbasic))
  end

  test "should destroy adesc_fbasic" do
    assert_difference('AdescFbasic.count', -1) do
      delete :destroy, id: @adesc_fbasic
    end

    assert_redirected_to adesc_fbasics_path
  end
end
