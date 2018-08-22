require 'test_helper'

class VDynamicoperationsControllerTest < ActionController::TestCase
  setup do
    @v_dynamicoperation = v_dynamicoperations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_dynamicoperations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_dynamicoperation" do
    assert_difference('VDynamicoperation.count') do
      post :create, v_dynamicoperation: { name: @v_dynamicoperation.name }
    end

    assert_redirected_to v_dynamicoperation_path(assigns(:v_dynamicoperation))
  end

  test "should show v_dynamicoperation" do
    get :show, id: @v_dynamicoperation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_dynamicoperation
    assert_response :success
  end

  test "should update v_dynamicoperation" do
    patch :update, id: @v_dynamicoperation, v_dynamicoperation: { name: @v_dynamicoperation.name }
    assert_redirected_to v_dynamicoperation_path(assigns(:v_dynamicoperation))
  end

  test "should destroy v_dynamicoperation" do
    assert_difference('VDynamicoperation.count', -1) do
      delete :destroy, id: @v_dynamicoperation
    end

    assert_redirected_to v_dynamicoperations_path
  end
end
