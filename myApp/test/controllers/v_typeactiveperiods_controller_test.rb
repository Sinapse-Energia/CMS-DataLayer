require 'test_helper'

class VTypeactiveperiodsControllerTest < ActionController::TestCase
  setup do
    @v_typeactiveperiod = v_typeactiveperiods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typeactiveperiods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typeactiveperiod" do
    assert_difference('VTypeactiveperiod.count') do
      post :create, v_typeactiveperiod: { name: @v_typeactiveperiod.name }
    end

    assert_redirected_to v_typeactiveperiod_path(assigns(:v_typeactiveperiod))
  end

  test "should show v_typeactiveperiod" do
    get :show, id: @v_typeactiveperiod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typeactiveperiod
    assert_response :success
  end

  test "should update v_typeactiveperiod" do
    patch :update, id: @v_typeactiveperiod, v_typeactiveperiod: { name: @v_typeactiveperiod.name }
    assert_redirected_to v_typeactiveperiod_path(assigns(:v_typeactiveperiod))
  end

  test "should destroy v_typeactiveperiod" do
    assert_difference('VTypeactiveperiod.count', -1) do
      delete :destroy, id: @v_typeactiveperiod
    end

    assert_redirected_to v_typeactiveperiods_path
  end
end
