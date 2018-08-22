require 'test_helper'

class LLightstatesControllerTest < ActionController::TestCase
  setup do
    @l_lightstate = l_lightstates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l_lightstates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l_lightstate" do
    assert_difference('LLightstate.count') do
      post :create, l_lightstate: { description: @l_lightstate.description, level: @l_lightstate.level }
    end

    assert_redirected_to l_lightstate_path(assigns(:l_lightstate))
  end

  test "should show l_lightstate" do
    get :show, id: @l_lightstate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l_lightstate
    assert_response :success
  end

  test "should update l_lightstate" do
    patch :update, id: @l_lightstate, l_lightstate: { description: @l_lightstate.description, level: @l_lightstate.level }
    assert_redirected_to l_lightstate_path(assigns(:l_lightstate))
  end

  test "should destroy l_lightstate" do
    assert_difference('LLightstate.count', -1) do
      delete :destroy, id: @l_lightstate
    end

    assert_redirected_to l_lightstates_path
  end
end
