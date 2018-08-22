require 'test_helper'

class AdescFelectricalmetersControllerTest < ActionController::TestCase
  setup do
    @adesc_felectricalmeter = adesc_felectricalmeters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_felectricalmeters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_felectricalmeter" do
    assert_difference('AdescFelectricalmeter.count') do
      post :create, adesc_felectricalmeter: { descr: @adesc_felectricalmeter.descr, enumeration: @adesc_felectricalmeter.enumeration, lightcommand: @adesc_felectricalmeter.lightcommand, maxinstances: @adesc_felectricalmeter.maxinstances, maxvalue: @adesc_felectricalmeter.maxvalue, minvalue: @adesc_felectricalmeter.minvalue, name: @adesc_felectricalmeter.name, read_only: @adesc_felectricalmeter.read_only, regex: @adesc_felectricalmeter.regex, unit: @adesc_felectricalmeter.unit, v_storagetype_id: @adesc_felectricalmeter.v_storagetype_id }
    end

    assert_redirected_to adesc_felectricalmeter_path(assigns(:adesc_felectricalmeter))
  end

  test "should show adesc_felectricalmeter" do
    get :show, id: @adesc_felectricalmeter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_felectricalmeter
    assert_response :success
  end

  test "should update adesc_felectricalmeter" do
    patch :update, id: @adesc_felectricalmeter, adesc_felectricalmeter: { descr: @adesc_felectricalmeter.descr, enumeration: @adesc_felectricalmeter.enumeration, lightcommand: @adesc_felectricalmeter.lightcommand, maxinstances: @adesc_felectricalmeter.maxinstances, maxvalue: @adesc_felectricalmeter.maxvalue, minvalue: @adesc_felectricalmeter.minvalue, name: @adesc_felectricalmeter.name, read_only: @adesc_felectricalmeter.read_only, regex: @adesc_felectricalmeter.regex, unit: @adesc_felectricalmeter.unit, v_storagetype_id: @adesc_felectricalmeter.v_storagetype_id }
    assert_redirected_to adesc_felectricalmeter_path(assigns(:adesc_felectricalmeter))
  end

  test "should destroy adesc_felectricalmeter" do
    assert_difference('AdescFelectricalmeter.count', -1) do
      delete :destroy, id: @adesc_felectricalmeter
    end

    assert_redirected_to adesc_felectricalmeters_path
  end
end
