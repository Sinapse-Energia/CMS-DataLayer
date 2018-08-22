require 'test_helper'

class VTypephysicalsupportsControllerTest < ActionController::TestCase
  setup do
    @v_typephysicalsupport = v_typephysicalsupports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typephysicalsupports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typephysicalsupport" do
    assert_difference('VTypephysicalsupport.count') do
      post :create, v_typephysicalsupport: { name: @v_typephysicalsupport.name, short_name: @v_typephysicalsupport.short_name }
    end

    assert_redirected_to v_typephysicalsupport_path(assigns(:v_typephysicalsupport))
  end

  test "should show v_typephysicalsupport" do
    get :show, id: @v_typephysicalsupport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typephysicalsupport
    assert_response :success
  end

  test "should update v_typephysicalsupport" do
    patch :update, id: @v_typephysicalsupport, v_typephysicalsupport: { name: @v_typephysicalsupport.name, short_name: @v_typephysicalsupport.short_name }
    assert_redirected_to v_typephysicalsupport_path(assigns(:v_typephysicalsupport))
  end

  test "should destroy v_typephysicalsupport" do
    assert_difference('VTypephysicalsupport.count', -1) do
      delete :destroy, id: @v_typephysicalsupport
    end

    assert_redirected_to v_typephysicalsupports_path
  end
end
