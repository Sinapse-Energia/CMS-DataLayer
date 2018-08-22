require 'test_helper'

class VPurposesControllerTest < ActionController::TestCase
  setup do
    @v_purpose = v_purposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_purposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_purpose" do
    assert_difference('VPurpose.count') do
      post :create, v_purpose: { name: @v_purpose.name }
    end

    assert_redirected_to v_purpose_path(assigns(:v_purpose))
  end

  test "should show v_purpose" do
    get :show, id: @v_purpose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_purpose
    assert_response :success
  end

  test "should update v_purpose" do
    patch :update, id: @v_purpose, v_purpose: { name: @v_purpose.name }
    assert_redirected_to v_purpose_path(assigns(:v_purpose))
  end

  test "should destroy v_purpose" do
    assert_difference('VPurpose.count', -1) do
      delete :destroy, id: @v_purpose
    end

    assert_redirected_to v_purposes_path
  end
end
