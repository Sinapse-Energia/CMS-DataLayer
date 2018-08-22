require 'test_helper'

class VTyperegulatorsControllerTest < ActionController::TestCase
  setup do
    @v_typeregulator = v_typeregulators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typeregulators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typeregulator" do
    assert_difference('VTyperegulator.count') do
      post :create, v_typeregulator: { name: @v_typeregulator.name, short_name: @v_typeregulator.short_name }
    end

    assert_redirected_to v_typeregulator_path(assigns(:v_typeregulator))
  end

  test "should show v_typeregulator" do
    get :show, id: @v_typeregulator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typeregulator
    assert_response :success
  end

  test "should update v_typeregulator" do
    patch :update, id: @v_typeregulator, v_typeregulator: { name: @v_typeregulator.name, short_name: @v_typeregulator.short_name }
    assert_redirected_to v_typeregulator_path(assigns(:v_typeregulator))
  end

  test "should destroy v_typeregulator" do
    assert_difference('VTyperegulator.count', -1) do
      delete :destroy, id: @v_typeregulator
    end

    assert_redirected_to v_typeregulators_path
  end
end
