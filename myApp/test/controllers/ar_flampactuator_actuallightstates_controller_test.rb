require 'test_helper'

class ArFlampactuatorActuallightstatesControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_actuallightstate = ar_flampactuator_actuallightstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_actuallightstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_actuallightstate" do
    assert_difference('ArFlampactuatorActuallightstate.count') do
      post :create, ar_flampactuator_actuallightstate: { f_lampactuator_id: @ar_flampactuator_actuallightstate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_actuallightstate.l_lightstate_id }
    end

    assert_redirected_to ar_flampactuator_actuallightstate_path(assigns(:ar_flampactuator_actuallightstate))
  end

  test "should show ar_flampactuator_actuallightstate" do
    get :show, id: @ar_flampactuator_actuallightstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_actuallightstate
    assert_response :success
  end

  test "should update ar_flampactuator_actuallightstate" do
    patch :update, id: @ar_flampactuator_actuallightstate, ar_flampactuator_actuallightstate: { f_lampactuator_id: @ar_flampactuator_actuallightstate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_actuallightstate.l_lightstate_id }
    assert_redirected_to ar_flampactuator_actuallightstate_path(assigns(:ar_flampactuator_actuallightstate))
  end

  test "should destroy ar_flampactuator_actuallightstate" do
    assert_difference('ArFlampactuatorActuallightstate.count', -1) do
      delete :destroy, id: @ar_flampactuator_actuallightstate
    end

    assert_redirected_to ar_flampactuator_actuallightstates_path
  end
end
