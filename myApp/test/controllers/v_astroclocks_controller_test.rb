require 'test_helper'

class VAstroclocksControllerTest < ActionController::TestCase
  setup do
    @v_astroclock = v_astroclocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_astroclocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_astroclock" do
    assert_difference('VAstroclock.count') do
      post :create, v_astroclock: { description: @v_astroclock.description }
    end

    assert_redirected_to v_astroclock_path(assigns(:v_astroclock))
  end

  test "should show v_astroclock" do
    get :show, id: @v_astroclock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_astroclock
    assert_response :success
  end

  test "should update v_astroclock" do
    patch :update, id: @v_astroclock, v_astroclock: { description: @v_astroclock.description }
    assert_redirected_to v_astroclock_path(assigns(:v_astroclock))
  end

  test "should destroy v_astroclock" do
    assert_difference('VAstroclock.count', -1) do
      delete :destroy, id: @v_astroclock
    end

    assert_redirected_to v_astroclocks_path
  end
end
