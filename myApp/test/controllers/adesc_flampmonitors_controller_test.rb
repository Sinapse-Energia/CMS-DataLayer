require 'test_helper'

class AdescFlampmonitorsControllerTest < ActionController::TestCase
  setup do
    @adesc_flampmonitor = adesc_flampmonitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_flampmonitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_flampmonitor" do
    assert_difference('AdescFlampmonitor.count') do
      post :create, adesc_flampmonitor: { descr: @adesc_flampmonitor.descr, enumeration: @adesc_flampmonitor.enumeration, lightcommand: @adesc_flampmonitor.lightcommand, maxinstances: @adesc_flampmonitor.maxinstances, maxvalue: @adesc_flampmonitor.maxvalue, minvalue: @adesc_flampmonitor.minvalue, name: @adesc_flampmonitor.name, read_only: @adesc_flampmonitor.read_only, regex: @adesc_flampmonitor.regex, unit: @adesc_flampmonitor.unit, v_storagetype_id: @adesc_flampmonitor.v_storagetype_id }
    end

    assert_redirected_to adesc_flampmonitor_path(assigns(:adesc_flampmonitor))
  end

  test "should show adesc_flampmonitor" do
    get :show, id: @adesc_flampmonitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_flampmonitor
    assert_response :success
  end

  test "should update adesc_flampmonitor" do
    patch :update, id: @adesc_flampmonitor, adesc_flampmonitor: { descr: @adesc_flampmonitor.descr, enumeration: @adesc_flampmonitor.enumeration, lightcommand: @adesc_flampmonitor.lightcommand, maxinstances: @adesc_flampmonitor.maxinstances, maxvalue: @adesc_flampmonitor.maxvalue, minvalue: @adesc_flampmonitor.minvalue, name: @adesc_flampmonitor.name, read_only: @adesc_flampmonitor.read_only, regex: @adesc_flampmonitor.regex, unit: @adesc_flampmonitor.unit, v_storagetype_id: @adesc_flampmonitor.v_storagetype_id }
    assert_redirected_to adesc_flampmonitor_path(assigns(:adesc_flampmonitor))
  end

  test "should destroy adesc_flampmonitor" do
    assert_difference('AdescFlampmonitor.count', -1) do
      delete :destroy, id: @adesc_flampmonitor
    end

    assert_redirected_to adesc_flampmonitors_path
  end
end
