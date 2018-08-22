require 'test_helper'

class VThresholdTypesControllerTest < ActionController::TestCase
  setup do
    @v_threshold_type = v_threshold_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_threshold_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_threshold_type" do
    assert_difference('VThresholdType.count') do
      post :create, v_threshold_type: { name: @v_threshold_type.name }
    end

    assert_redirected_to v_threshold_type_path(assigns(:v_threshold_type))
  end

  test "should show v_threshold_type" do
    get :show, id: @v_threshold_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_threshold_type
    assert_response :success
  end

  test "should update v_threshold_type" do
    patch :update, id: @v_threshold_type, v_threshold_type: { name: @v_threshold_type.name }
    assert_redirected_to v_threshold_type_path(assigns(:v_threshold_type))
  end

  test "should destroy v_threshold_type" do
    assert_difference('VThresholdType.count', -1) do
      delete :destroy, id: @v_threshold_type
    end

    assert_redirected_to v_threshold_types_path
  end
end
