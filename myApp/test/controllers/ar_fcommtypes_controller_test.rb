require 'test_helper'

class ArFcommtypesControllerTest < ActionController::TestCase
  setup do
    @ar_fcommtype = ar_fcommtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_fcommtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_fcommtype" do
    assert_difference('ArFcommtype.count') do
      post :create, ar_fcommtype: { f_communication_id: @ar_fcommtype.f_communication_id, v_typecommunication_id: @ar_fcommtype.v_typecommunication_id }
    end

    assert_redirected_to ar_fcommtype_path(assigns(:ar_fcommtype))
  end

  test "should show ar_fcommtype" do
    get :show, id: @ar_fcommtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_fcommtype
    assert_response :success
  end

  test "should update ar_fcommtype" do
    patch :update, id: @ar_fcommtype, ar_fcommtype: { f_communication_id: @ar_fcommtype.f_communication_id, v_typecommunication_id: @ar_fcommtype.v_typecommunication_id }
    assert_redirected_to ar_fcommtype_path(assigns(:ar_fcommtype))
  end

  test "should destroy ar_fcommtype" do
    assert_difference('ArFcommtype.count', -1) do
      delete :destroy, id: @ar_fcommtype
    end

    assert_redirected_to ar_fcommtypes_path
  end
end
