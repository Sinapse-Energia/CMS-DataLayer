require 'test_helper'

class AdescFbridgesControllerTest < ActionController::TestCase
  setup do
    @adesc_fbridge = adesc_fbridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adesc_fbridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adesc_fbridge" do
    assert_difference('AdescFbridge.count') do
      post :create, adesc_fbridge: { descr: @adesc_fbridge.descr, enumeration: @adesc_fbridge.enumeration, lightcommand: @adesc_fbridge.lightcommand, maxinstances: @adesc_fbridge.maxinstances, maxvalue: @adesc_fbridge.maxvalue, minvalue: @adesc_fbridge.minvalue, name: @adesc_fbridge.name, read_only: @adesc_fbridge.read_only, regex: @adesc_fbridge.regex, unit: @adesc_fbridge.unit, v_storagetype_id: @adesc_fbridge.v_storagetype_id }
    end

    assert_redirected_to adesc_fbridge_path(assigns(:adesc_fbridge))
  end

  test "should show adesc_fbridge" do
    get :show, id: @adesc_fbridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adesc_fbridge
    assert_response :success
  end

  test "should update adesc_fbridge" do
    patch :update, id: @adesc_fbridge, adesc_fbridge: { descr: @adesc_fbridge.descr, enumeration: @adesc_fbridge.enumeration, lightcommand: @adesc_fbridge.lightcommand, maxinstances: @adesc_fbridge.maxinstances, maxvalue: @adesc_fbridge.maxvalue, minvalue: @adesc_fbridge.minvalue, name: @adesc_fbridge.name, read_only: @adesc_fbridge.read_only, regex: @adesc_fbridge.regex, unit: @adesc_fbridge.unit, v_storagetype_id: @adesc_fbridge.v_storagetype_id }
    assert_redirected_to adesc_fbridge_path(assigns(:adesc_fbridge))
  end

  test "should destroy adesc_fbridge" do
    assert_difference('AdescFbridge.count', -1) do
      delete :destroy, id: @adesc_fbridge
    end

    assert_redirected_to adesc_fbridges_path
  end
end
