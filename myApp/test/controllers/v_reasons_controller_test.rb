require 'test_helper'

class VReasonsControllerTest < ActionController::TestCase
  setup do
    @v_reason = v_reasons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_reasons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_reason" do
    assert_difference('VReason.count') do
      post :create, v_reason: { name: @v_reason.name }
    end

    assert_redirected_to v_reason_path(assigns(:v_reason))
  end

  test "should show v_reason" do
    get :show, id: @v_reason
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_reason
    assert_response :success
  end

  test "should update v_reason" do
    patch :update, id: @v_reason, v_reason: { name: @v_reason.name }
    assert_redirected_to v_reason_path(assigns(:v_reason))
  end

  test "should destroy v_reason" do
    assert_difference('VReason.count', -1) do
      delete :destroy, id: @v_reason
    end

    assert_redirected_to v_reasons_path
  end
end
