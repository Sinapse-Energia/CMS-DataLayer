require 'test_helper'

class PFixedtimecontrolsControllerTest < ActionController::TestCase
  setup do
    @p_fixedtimecontrol = p_fixedtimecontrols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_fixedtimecontrols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_fixedtimecontrol" do
    assert_difference('PFixedtimecontrol.count') do
      post :create, p_fixedtimecontrol: { ep_controlprogram_id: @p_fixedtimecontrol.ep_controlprogram_id, l_lightcommand_id: @p_fixedtimecontrol.l_lightcommand_id, off_set: @p_fixedtimecontrol.off_set, start_time: @p_fixedtimecontrol.start_time, v_astroclock_id: @p_fixedtimecontrol.v_astroclock_id, v_typeexecution_id: @p_fixedtimecontrol.v_typeexecution_id }
    end

    assert_redirected_to p_fixedtimecontrol_path(assigns(:p_fixedtimecontrol))
  end

  test "should show p_fixedtimecontrol" do
    get :show, id: @p_fixedtimecontrol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_fixedtimecontrol
    assert_response :success
  end

  test "should update p_fixedtimecontrol" do
    patch :update, id: @p_fixedtimecontrol, p_fixedtimecontrol: { ep_controlprogram_id: @p_fixedtimecontrol.ep_controlprogram_id, l_lightcommand_id: @p_fixedtimecontrol.l_lightcommand_id, off_set: @p_fixedtimecontrol.off_set, start_time: @p_fixedtimecontrol.start_time, v_astroclock_id: @p_fixedtimecontrol.v_astroclock_id, v_typeexecution_id: @p_fixedtimecontrol.v_typeexecution_id }
    assert_redirected_to p_fixedtimecontrol_path(assigns(:p_fixedtimecontrol))
  end

  test "should destroy p_fixedtimecontrol" do
    assert_difference('PFixedtimecontrol.count', -1) do
      delete :destroy, id: @p_fixedtimecontrol
    end

    assert_redirected_to p_fixedtimecontrols_path
  end
end
