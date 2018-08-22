require 'test_helper'

class SiEmailListsControllerTest < ActionController::TestCase
  setup do
    @si_email_list = si_email_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_email_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_email_list" do
    assert_difference('SiEmailList.count') do
      post :create, si_email_list: { description: @si_email_list.description, id_user_aux: @si_email_list.id_user_aux }
    end

    assert_redirected_to si_email_list_path(assigns(:si_email_list))
  end

  test "should show si_email_list" do
    get :show, id: @si_email_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_email_list
    assert_response :success
  end

  test "should update si_email_list" do
    patch :update, id: @si_email_list, si_email_list: { description: @si_email_list.description, id_user_aux: @si_email_list.id_user_aux }
    assert_redirected_to si_email_list_path(assigns(:si_email_list))
  end

  test "should destroy si_email_list" do
    assert_difference('SiEmailList.count', -1) do
      delete :destroy, id: @si_email_list
    end

    assert_redirected_to si_email_lists_path
  end
end
