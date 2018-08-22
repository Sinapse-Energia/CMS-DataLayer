require 'test_helper'

class EdClasslogicaldevsFFunctionsControllerTest < ActionController::TestCase
  setup do
    @ed_classlogicaldevs_f_function = ed_classlogicaldevs_f_functions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_classlogicaldevs_f_functions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_classlogicaldevs_f_function" do
    assert_difference('EdClasslogicaldevsFFunction.count') do
      post :create, ed_classlogicaldevs_f_function: { ed_classlogicaldev_id: @ed_classlogicaldevs_f_function.ed_classlogicaldev_id, f_function_id: @ed_classlogicaldevs_f_function.f_function_id }
    end

    assert_redirected_to ed_classlogicaldevs_f_function_path(assigns(:ed_classlogicaldevs_f_function))
  end

  test "should show ed_classlogicaldevs_f_function" do
    get :show, id: @ed_classlogicaldevs_f_function
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_classlogicaldevs_f_function
    assert_response :success
  end

  test "should update ed_classlogicaldevs_f_function" do
    patch :update, id: @ed_classlogicaldevs_f_function, ed_classlogicaldevs_f_function: { ed_classlogicaldev_id: @ed_classlogicaldevs_f_function.ed_classlogicaldev_id, f_function_id: @ed_classlogicaldevs_f_function.f_function_id }
    assert_redirected_to ed_classlogicaldevs_f_function_path(assigns(:ed_classlogicaldevs_f_function))
  end

  test "should destroy ed_classlogicaldevs_f_function" do
    assert_difference('EdClasslogicaldevsFFunction.count', -1) do
      delete :destroy, id: @ed_classlogicaldevs_f_function
    end

    assert_redirected_to ed_classlogicaldevs_f_functions_path
  end
end
