require 'test_helper'

class ArFlampactuatorTargetlightcommandsControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_targetlightcommand = ar_flampactuator_targetlightcommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_targetlightcommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_targetlightcommand" do
    assert_difference('ArFlampactuatorTargetlightcommand.count') do
      post :create, ar_flampactuator_targetlightcommand: { f_lampactuator_id: @ar_flampactuator_targetlightcommand.f_lampactuator_id, l_lightcommand_id: @ar_flampactuator_targetlightcommand.l_lightcommand_id }
    end

    assert_redirected_to ar_flampactuator_targetlightcommand_path(assigns(:ar_flampactuator_targetlightcommand))
  end

  test "should show ar_flampactuator_targetlightcommand" do
    get :show, id: @ar_flampactuator_targetlightcommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_targetlightcommand
    assert_response :success
  end

  test "should update ar_flampactuator_targetlightcommand" do
    patch :update, id: @ar_flampactuator_targetlightcommand, ar_flampactuator_targetlightcommand: { f_lampactuator_id: @ar_flampactuator_targetlightcommand.f_lampactuator_id, l_lightcommand_id: @ar_flampactuator_targetlightcommand.l_lightcommand_id }
    assert_redirected_to ar_flampactuator_targetlightcommand_path(assigns(:ar_flampactuator_targetlightcommand))
  end

  test "should destroy ar_flampactuator_targetlightcommand" do
    assert_difference('ArFlampactuatorTargetlightcommand.count', -1) do
      delete :destroy, id: @ar_flampactuator_targetlightcommand
    end

    assert_redirected_to ar_flampactuator_targetlightcommands_path
  end
end
