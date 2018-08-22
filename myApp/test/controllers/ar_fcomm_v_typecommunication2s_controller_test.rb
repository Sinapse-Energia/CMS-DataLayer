require 'test_helper'

class ArFcommVTypecommunication2sControllerTest < ActionController::TestCase
  setup do
    @ar_fcomm_v_typecommunication2 = ar_fcomm_v_typecommunication2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_fcomm_v_typecommunication2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_fcomm_v_typecommunication2" do
    assert_difference('ArFcommVTypecommunication2.count') do
      post :create, ar_fcomm_v_typecommunication2: { f_communication_id: @ar_fcomm_v_typecommunication2.f_communication_id, v_typecommunication_id: @ar_fcomm_v_typecommunication2.v_typecommunication_id }
    end

    assert_redirected_to ar_fcomm_v_typecommunication2_path(assigns(:ar_fcomm_v_typecommunication2))
  end

  test "should show ar_fcomm_v_typecommunication2" do
    get :show, id: @ar_fcomm_v_typecommunication2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_fcomm_v_typecommunication2
    assert_response :success
  end

  test "should update ar_fcomm_v_typecommunication2" do
    patch :update, id: @ar_fcomm_v_typecommunication2, ar_fcomm_v_typecommunication2: { f_communication_id: @ar_fcomm_v_typecommunication2.f_communication_id, v_typecommunication_id: @ar_fcomm_v_typecommunication2.v_typecommunication_id }
    assert_redirected_to ar_fcomm_v_typecommunication2_path(assigns(:ar_fcomm_v_typecommunication2))
  end

  test "should destroy ar_fcomm_v_typecommunication2" do
    assert_difference('ArFcommVTypecommunication2.count', -1) do
      delete :destroy, id: @ar_fcomm_v_typecommunication2
    end

    assert_redirected_to ar_fcomm_v_typecommunication2s_path
  end
end
