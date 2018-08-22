require 'test_helper'

class FElectricalmetersControllerTest < ActionController::TestCase
  setup do
    @f_electricalmeter = f_electricalmeters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_electricalmeters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_electricalmeter" do
    assert_difference('FElectricalmeter.count') do
      post :create, f_electricalmeter: { ed_logicaldev_id: @f_electricalmeter.ed_logicaldev_id }
    end

    assert_redirected_to f_electricalmeter_path(assigns(:f_electricalmeter))
  end

  test "should show f_electricalmeter" do
    get :show, id: @f_electricalmeter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_electricalmeter
    assert_response :success
  end

  test "should update f_electricalmeter" do
    patch :update, id: @f_electricalmeter, f_electricalmeter: { ed_logicaldev_id: @f_electricalmeter.ed_logicaldev_id }
    assert_redirected_to f_electricalmeter_path(assigns(:f_electricalmeter))
  end

  test "should destroy f_electricalmeter" do
    assert_difference('FElectricalmeter.count', -1) do
      delete :destroy, id: @f_electricalmeter
    end

    assert_redirected_to f_electricalmeters_path
  end
end
