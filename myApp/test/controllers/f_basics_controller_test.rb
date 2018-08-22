require 'test_helper'

class FBasicsControllerTest < ActionController::TestCase
  setup do
    @f_basic = f_basics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_basics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_basic" do
    assert_difference('FBasic.count') do
      post :create, f_basic: { ed_logicaldev_id: @f_basic.ed_logicaldev_id }
    end

    assert_redirected_to f_basic_path(assigns(:f_basic))
  end

  test "should show f_basic" do
    get :show, id: @f_basic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_basic
    assert_response :success
  end

  test "should update f_basic" do
    patch :update, id: @f_basic, f_basic: { ed_logicaldev_id: @f_basic.ed_logicaldev_id }
    assert_redirected_to f_basic_path(assigns(:f_basic))
  end

  test "should destroy f_basic" do
    assert_difference('FBasic.count', -1) do
      delete :destroy, id: @f_basic
    end

    assert_redirected_to f_basics_path
  end
end
