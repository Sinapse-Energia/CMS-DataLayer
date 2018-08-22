require 'test_helper'

class ArFlampactuatorDefaultscenestatesControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_defaultscenestate = ar_flampactuator_defaultscenestates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_defaultscenestates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_defaultscenestate" do
    assert_difference('ArFlampactuatorDefaultscenestate.count') do
      post :create, ar_flampactuator_defaultscenestate: { f_lampactuator_id: @ar_flampactuator_defaultscenestate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_defaultscenestate.l_lightstate_id }
    end

    assert_redirected_to ar_flampactuator_defaultscenestate_path(assigns(:ar_flampactuator_defaultscenestate))
  end

  test "should show ar_flampactuator_defaultscenestate" do
    get :show, id: @ar_flampactuator_defaultscenestate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_defaultscenestate
    assert_response :success
  end

  test "should update ar_flampactuator_defaultscenestate" do
    patch :update, id: @ar_flampactuator_defaultscenestate, ar_flampactuator_defaultscenestate: { f_lampactuator_id: @ar_flampactuator_defaultscenestate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_defaultscenestate.l_lightstate_id }
    assert_redirected_to ar_flampactuator_defaultscenestate_path(assigns(:ar_flampactuator_defaultscenestate))
  end

  test "should destroy ar_flampactuator_defaultscenestate" do
    assert_difference('ArFlampactuatorDefaultscenestate.count', -1) do
      delete :destroy, id: @ar_flampactuator_defaultscenestate
    end

    assert_redirected_to ar_flampactuator_defaultscenestates_path
  end
end
