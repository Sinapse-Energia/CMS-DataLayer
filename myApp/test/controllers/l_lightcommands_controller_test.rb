require 'test_helper'

class LLightcommandsControllerTest < ActionController::TestCase
  setup do
    @l_lightcommand = l_lightcommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l_lightcommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l_lightcommand" do
    assert_difference('LLightcommand.count') do
      post :create, l_lightcommand: { cms_refid: @l_lightcommand.cms_refid, es_scene_id: @l_lightcommand.es_scene_id, expiration: @l_lightcommand.expiration, l_lightstate_id: @l_lightcommand.l_lightstate_id, ref_addr_control: @l_lightcommand.ref_addr_control, ref_addr_sensor: @l_lightcommand.ref_addr_sensor, v_action_id: @l_lightcommand.v_action_id, v_reason_id: @l_lightcommand.v_reason_id }
    end

    assert_redirected_to l_lightcommand_path(assigns(:l_lightcommand))
  end

  test "should show l_lightcommand" do
    get :show, id: @l_lightcommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l_lightcommand
    assert_response :success
  end

  test "should update l_lightcommand" do
    patch :update, id: @l_lightcommand, l_lightcommand: { cms_refid: @l_lightcommand.cms_refid, es_scene_id: @l_lightcommand.es_scene_id, expiration: @l_lightcommand.expiration, l_lightstate_id: @l_lightcommand.l_lightstate_id, ref_addr_control: @l_lightcommand.ref_addr_control, ref_addr_sensor: @l_lightcommand.ref_addr_sensor, v_action_id: @l_lightcommand.v_action_id, v_reason_id: @l_lightcommand.v_reason_id }
    assert_redirected_to l_lightcommand_path(assigns(:l_lightcommand))
  end

  test "should destroy l_lightcommand" do
    assert_difference('LLightcommand.count', -1) do
      delete :destroy, id: @l_lightcommand
    end

    assert_redirected_to l_lightcommands_path
  end
end
