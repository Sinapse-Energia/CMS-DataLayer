require 'test_helper'

class PDynamicoperationsControllerTest < ActionController::TestCase
  setup do
    @p_dynamicoperation = p_dynamicoperations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_dynamicoperations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_dynamicoperation" do
    assert_difference('PDynamicoperation.count') do
      post :create, p_dynamicoperation: { set: @p_dynamicoperation.set, v_dynamicoperation_id: @p_dynamicoperation.v_dynamicoperation_id }
    end

    assert_redirected_to p_dynamicoperation_path(assigns(:p_dynamicoperation))
  end

  test "should show p_dynamicoperation" do
    get :show, id: @p_dynamicoperation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_dynamicoperation
    assert_response :success
  end

  test "should update p_dynamicoperation" do
    patch :update, id: @p_dynamicoperation, p_dynamicoperation: { set: @p_dynamicoperation.set, v_dynamicoperation_id: @p_dynamicoperation.v_dynamicoperation_id }
    assert_redirected_to p_dynamicoperation_path(assigns(:p_dynamicoperation))
  end

  test "should destroy p_dynamicoperation" do
    assert_difference('PDynamicoperation.count', -1) do
      delete :destroy, id: @p_dynamicoperation
    end

    assert_redirected_to p_dynamicoperations_path
  end
end
