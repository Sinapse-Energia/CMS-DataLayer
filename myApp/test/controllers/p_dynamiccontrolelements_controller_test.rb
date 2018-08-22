require 'test_helper'

class PDynamiccontrolelementsControllerTest < ActionController::TestCase
  setup do
    @p_dynamiccontrolelement = p_dynamiccontrolelements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_dynamiccontrolelements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_dynamiccontrolelement" do
    assert_difference('PDynamiccontrolelement.count') do
      post :create, p_dynamiccontrolelement: { end_time: @p_dynamiccontrolelement.end_time, ep_controlprogram_id: @p_dynamiccontrolelement.ep_controlprogram_id, is_fixed: @p_dynamiccontrolelement.is_fixed, l_lightcommand_id: @p_dynamiccontrolelement.l_lightcommand_id, l_sensor_id: @p_dynamiccontrolelement.l_sensor_id, p_dynamicoperation_id: @p_dynamiccontrolelement.p_dynamicoperation_id, start_time: @p_dynamiccontrolelement.start_time }
    end

    assert_redirected_to p_dynamiccontrolelement_path(assigns(:p_dynamiccontrolelement))
  end

  test "should show p_dynamiccontrolelement" do
    get :show, id: @p_dynamiccontrolelement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_dynamiccontrolelement
    assert_response :success
  end

  test "should update p_dynamiccontrolelement" do
    patch :update, id: @p_dynamiccontrolelement, p_dynamiccontrolelement: { end_time: @p_dynamiccontrolelement.end_time, ep_controlprogram_id: @p_dynamiccontrolelement.ep_controlprogram_id, is_fixed: @p_dynamiccontrolelement.is_fixed, l_lightcommand_id: @p_dynamiccontrolelement.l_lightcommand_id, l_sensor_id: @p_dynamiccontrolelement.l_sensor_id, p_dynamicoperation_id: @p_dynamiccontrolelement.p_dynamicoperation_id, start_time: @p_dynamiccontrolelement.start_time }
    assert_redirected_to p_dynamiccontrolelement_path(assigns(:p_dynamiccontrolelement))
  end

  test "should destroy p_dynamiccontrolelement" do
    assert_difference('PDynamiccontrolelement.count', -1) do
      delete :destroy, id: @p_dynamiccontrolelement
    end

    assert_redirected_to p_dynamiccontrolelements_path
  end
end
