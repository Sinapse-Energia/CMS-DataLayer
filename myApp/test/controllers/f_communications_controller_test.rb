require 'test_helper'

class FCommunicationsControllerTest < ActionController::TestCase
  setup do
    @f_communication = f_communications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:f_communications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f_communication" do
    assert_difference('FCommunication.count') do
      post :create, f_communication: { ed_logicaldev_id: @f_communication.ed_logicaldev_id }
    end

    assert_redirected_to f_communication_path(assigns(:f_communication))
  end

  test "should show f_communication" do
    get :show, id: @f_communication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f_communication
    assert_response :success
  end

  test "should update f_communication" do
    patch :update, id: @f_communication, f_communication: { ed_logicaldev_id: @f_communication.ed_logicaldev_id }
    assert_redirected_to f_communication_path(assigns(:f_communication))
  end

  test "should destroy f_communication" do
    assert_difference('FCommunication.count', -1) do
      delete :destroy, id: @f_communication
    end

    assert_redirected_to f_communications_path
  end
end
