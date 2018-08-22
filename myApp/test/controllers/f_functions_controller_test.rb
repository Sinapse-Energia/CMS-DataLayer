require 'test_helper'

class FFunctionsControllerTest < ActionController::TestCase
  setup do
    @f_function = f_functions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_functions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_function" do
    assert_difference('FFunction.count') do
      post :create, f_function: { name: @f_function.name }
    end

    assert_redirected_to f_function_path(assigns(:f_function))
  end

  test "should show f_function" do
    get :show, id: @f_function
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_function
    assert_response :success
  end

  test "should update f_function" do
    patch :update, id: @f_function, f_function: { name: @f_function.name }
    assert_redirected_to f_function_path(assigns(:f_function))
  end

  test "should destroy f_function" do
    assert_difference('FFunction.count', -1) do
      delete :destroy, id: @f_function
    end

    assert_redirected_to f_functions_path
  end
end
