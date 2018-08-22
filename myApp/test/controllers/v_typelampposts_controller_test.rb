require 'test_helper'

class VTypelamppostsControllerTest < ActionController::TestCase
  setup do
    @v_typelamppost = v_typelampposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typelampposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typelamppost" do
    assert_difference('VTypelamppost.count') do
      post :create, v_typelamppost: { name: @v_typelamppost.name, short_name: @v_typelamppost.short_name }
    end

    assert_redirected_to v_typelamppost_path(assigns(:v_typelamppost))
  end

  test "should show v_typelamppost" do
    get :show, id: @v_typelamppost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typelamppost
    assert_response :success
  end

  test "should update v_typelamppost" do
    patch :update, id: @v_typelamppost, v_typelamppost: { name: @v_typelamppost.name, short_name: @v_typelamppost.short_name }
    assert_redirected_to v_typelamppost_path(assigns(:v_typelamppost))
  end

  test "should destroy v_typelamppost" do
    assert_difference('VTypelamppost.count', -1) do
      delete :destroy, id: @v_typelamppost
    end

    assert_redirected_to v_typelampposts_path
  end
end
