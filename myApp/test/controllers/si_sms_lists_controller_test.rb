require 'test_helper'

class SiSmsListsControllerTest < ActionController::TestCase
  setup do
    @si_sms_list = si_sms_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_sms_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_sms_list" do
    assert_difference('SiSmsList.count') do
      post :create, si_sms_list: { description: @si_sms_list.description, id_user_aux: @si_sms_list.id_user_aux }
    end

    assert_redirected_to si_sms_list_path(assigns(:si_sms_list))
  end

  test "should show si_sms_list" do
    get :show, id: @si_sms_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_sms_list
    assert_response :success
  end

  test "should update si_sms_list" do
    patch :update, id: @si_sms_list, si_sms_list: { description: @si_sms_list.description, id_user_aux: @si_sms_list.id_user_aux }
    assert_redirected_to si_sms_list_path(assigns(:si_sms_list))
  end

  test "should destroy si_sms_list" do
    assert_difference('SiSmsList.count', -1) do
      delete :destroy, id: @si_sms_list
    end

    assert_redirected_to si_sms_lists_path
  end
end
