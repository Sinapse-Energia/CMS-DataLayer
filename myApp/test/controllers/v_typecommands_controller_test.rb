require 'test_helper'

class VTypecommandsControllerTest < ActionController::TestCase
  setup do
    @v_typecommand = v_typecommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typecommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typecommand" do
    assert_difference('VTypecommand.count') do
      post :create, v_typecommand: { name: @v_typecommand.name, short_name: @v_typecommand.short_name }
    end

    assert_redirected_to v_typecommand_path(assigns(:v_typecommand))
  end

  test "should show v_typecommand" do
    get :show, id: @v_typecommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typecommand
    assert_response :success
  end

  test "should update v_typecommand" do
    patch :update, id: @v_typecommand, v_typecommand: { name: @v_typecommand.name, short_name: @v_typecommand.short_name }
    assert_redirected_to v_typecommand_path(assigns(:v_typecommand))
  end

  test "should destroy v_typecommand" do
    assert_difference('VTypecommand.count', -1) do
      delete :destroy, id: @v_typecommand
    end

    assert_redirected_to v_typecommands_path
  end
end
