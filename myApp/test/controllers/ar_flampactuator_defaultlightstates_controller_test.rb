require 'test_helper'

class ArFlampactuatorDefaultlightstatesControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_defaultlightstate = ar_flampactuator_defaultlightstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_defaultlightstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_defaultlightstate" do
    assert_difference('ArFlampactuatorDefaultlightstate.count') do
      post :create, ar_flampactuator_defaultlightstate: { f_lampactuator_id: @ar_flampactuator_defaultlightstate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_defaultlightstate.l_lightstate_id }
    end

    assert_redirected_to ar_flampactuator_defaultlightstate_path(assigns(:ar_flampactuator_defaultlightstate))
  end

  test "should show ar_flampactuator_defaultlightstate" do
    get :show, id: @ar_flampactuator_defaultlightstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_defaultlightstate
    assert_response :success
  end

  test "should update ar_flampactuator_defaultlightstate" do
    patch :update, id: @ar_flampactuator_defaultlightstate, ar_flampactuator_defaultlightstate: { f_lampactuator_id: @ar_flampactuator_defaultlightstate.f_lampactuator_id, l_lightstate_id: @ar_flampactuator_defaultlightstate.l_lightstate_id }
    assert_redirected_to ar_flampactuator_defaultlightstate_path(assigns(:ar_flampactuator_defaultlightstate))
  end

  test "should destroy ar_flampactuator_defaultlightstate" do
    assert_difference('ArFlampactuatorDefaultlightstate.count', -1) do
      delete :destroy, id: @ar_flampactuator_defaultlightstate
    end

    assert_redirected_to ar_flampactuator_defaultlightstates_path
  end
end
