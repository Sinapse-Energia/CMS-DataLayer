require 'test_helper'

class VTypeexecutionsControllerTest < ActionController::TestCase
  setup do
    @v_typeexecution = v_typeexecutions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typeexecutions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typeexecution" do
    assert_difference('VTypeexecution.count') do
      post :create, v_typeexecution: { description: @v_typeexecution.description }
    end

    assert_redirected_to v_typeexecution_path(assigns(:v_typeexecution))
  end

  test "should show v_typeexecution" do
    get :show, id: @v_typeexecution
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typeexecution
    assert_response :success
  end

  test "should update v_typeexecution" do
    patch :update, id: @v_typeexecution, v_typeexecution: { description: @v_typeexecution.description }
    assert_redirected_to v_typeexecution_path(assigns(:v_typeexecution))
  end

  test "should destroy v_typeexecution" do
    assert_difference('VTypeexecution.count', -1) do
      delete :destroy, id: @v_typeexecution
    end

    assert_redirected_to v_typeexecutions_path
  end
end
