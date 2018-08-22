require 'test_helper'

class AdescFcommsControllerTest < ActionController::TestCase
  setup do
    @adesc_fcomm = adesc_fcomms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_fcomms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_fcomm" do
    assert_difference('AdescFcomm.count') do
      post :create, adesc_fcomm: { descr: @adesc_fcomm.descr, enumeration: @adesc_fcomm.enumeration, lightcommand: @adesc_fcomm.lightcommand, maxinstances: @adesc_fcomm.maxinstances, maxvalue: @adesc_fcomm.maxvalue, minvalue: @adesc_fcomm.minvalue, name: @adesc_fcomm.name, read_only: @adesc_fcomm.read_only, regex: @adesc_fcomm.regex, unit: @adesc_fcomm.unit, v_storagetype_id: @adesc_fcomm.v_storagetype_id }
    end

    assert_redirected_to adesc_fcomm_path(assigns(:adesc_fcomm))
  end

  test "should show adesc_fcomm" do
    get :show, id: @adesc_fcomm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_fcomm
    assert_response :success
  end

  test "should update adesc_fcomm" do
    patch :update, id: @adesc_fcomm, adesc_fcomm: { descr: @adesc_fcomm.descr, enumeration: @adesc_fcomm.enumeration, lightcommand: @adesc_fcomm.lightcommand, maxinstances: @adesc_fcomm.maxinstances, maxvalue: @adesc_fcomm.maxvalue, minvalue: @adesc_fcomm.minvalue, name: @adesc_fcomm.name, read_only: @adesc_fcomm.read_only, regex: @adesc_fcomm.regex, unit: @adesc_fcomm.unit, v_storagetype_id: @adesc_fcomm.v_storagetype_id }
    assert_redirected_to adesc_fcomm_path(assigns(:adesc_fcomm))
  end

  test "should destroy adesc_fcomm" do
    assert_difference('AdescFcomm.count', -1) do
      delete :destroy, id: @adesc_fcomm
    end

    assert_redirected_to adesc_fcomms_path
  end
end
