require 'test_helper'

class VAccountsControllerTest < ActionController::TestCase
  setup do
    @v_account = v_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_account" do
    assert_difference('VAccount.count') do
      post :create, v_account: { description: @v_account.description }
    end

    assert_redirected_to v_account_path(assigns(:v_account))
  end

  test "should show v_account" do
    get :show, id: @v_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_account
    assert_response :success
  end

  test "should update v_account" do
    patch :update, id: @v_account, v_account: { description: @v_account.description }
    assert_redirected_to v_account_path(assigns(:v_account))
  end

  test "should destroy v_account" do
    assert_difference('VAccount.count', -1) do
      delete :destroy, id: @v_account
    end

    assert_redirected_to v_accounts_path
  end
end
