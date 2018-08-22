require 'test_helper'

class VTypecommunicationsControllerTest < ActionController::TestCase
  setup do
    @v_typecommunication = v_typecommunications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_typecommunications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_typecommunication" do
    assert_difference('VTypecommunication.count') do
      post :create, v_typecommunication: { name: @v_typecommunication.name }
    end

    assert_redirected_to v_typecommunication_path(assigns(:v_typecommunication))
  end

  test "should show v_typecommunication" do
    get :show, id: @v_typecommunication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_typecommunication
    assert_response :success
  end

  test "should update v_typecommunication" do
    patch :update, id: @v_typecommunication, v_typecommunication: { name: @v_typecommunication.name }
    assert_redirected_to v_typecommunication_path(assigns(:v_typecommunication))
  end

  test "should destroy v_typecommunication" do
    assert_difference('VTypecommunication.count', -1) do
      delete :destroy, id: @v_typecommunication
    end

    assert_redirected_to v_typecommunications_path
  end
end
