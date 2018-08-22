require 'test_helper'

class FLampactuatorsControllerTest < ActionController::TestCase
  setup do
    @f_lampactuator = f_lampactuators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_lampactuators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_lampactuator" do
    assert_difference('FLampactuator.count') do
      post :create, f_lampactuator: { ed_logicaldev_id: @f_lampactuator.ed_logicaldev_id }
    end

    assert_redirected_to f_lampactuator_path(assigns(:f_lampactuator))
  end

  test "should show f_lampactuator" do
    get :show, id: @f_lampactuator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_lampactuator
    assert_response :success
  end

  test "should update f_lampactuator" do
    patch :update, id: @f_lampactuator, f_lampactuator: { ed_logicaldev_id: @f_lampactuator.ed_logicaldev_id }
    assert_redirected_to f_lampactuator_path(assigns(:f_lampactuator))
  end

  test "should destroy f_lampactuator" do
    assert_difference('FLampactuator.count', -1) do
      delete :destroy, id: @f_lampactuator
    end

    assert_redirected_to f_lampactuators_path
  end
end
