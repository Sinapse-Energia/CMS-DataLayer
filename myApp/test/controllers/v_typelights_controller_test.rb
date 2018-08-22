require 'test_helper'

class VTypelightsControllerTest < ActionController::TestCase
  setup do
    @v_typelight = v_typelights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typelights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typelight" do
    assert_difference('VTypelight.count') do
      post :create, v_typelight: { name: @v_typelight.name, short_name: @v_typelight.short_name }
    end

    assert_redirected_to v_typelight_path(assigns(:v_typelight))
  end

  test "should show v_typelight" do
    get :show, id: @v_typelight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typelight
    assert_response :success
  end

  test "should update v_typelight" do
    patch :update, id: @v_typelight, v_typelight: { name: @v_typelight.name, short_name: @v_typelight.short_name }
    assert_redirected_to v_typelight_path(assigns(:v_typelight))
  end

  test "should destroy v_typelight" do
    assert_difference('VTypelight.count', -1) do
      delete :destroy, id: @v_typelight
    end

    assert_redirected_to v_typelights_path
  end
end
