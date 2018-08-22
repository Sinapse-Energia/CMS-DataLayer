require 'test_helper'

class ArFlampactuatorLamptypesControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_lamptype = ar_flampactuator_lamptypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_lamptypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_lamptype" do
    assert_difference('ArFlampactuatorLamptype.count') do
      post :create, ar_flampactuator_lamptype: { el_lamptype_id: @ar_flampactuator_lamptype.el_lamptype_id, f_lampactuator_id: @ar_flampactuator_lamptype.f_lampactuator_id }
    end

    assert_redirected_to ar_flampactuator_lamptype_path(assigns(:ar_flampactuator_lamptype))
  end

  test "should show ar_flampactuator_lamptype" do
    get :show, id: @ar_flampactuator_lamptype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_lamptype
    assert_response :success
  end

  test "should update ar_flampactuator_lamptype" do
    patch :update, id: @ar_flampactuator_lamptype, ar_flampactuator_lamptype: { el_lamptype_id: @ar_flampactuator_lamptype.el_lamptype_id, f_lampactuator_id: @ar_flampactuator_lamptype.f_lampactuator_id }
    assert_redirected_to ar_flampactuator_lamptype_path(assigns(:ar_flampactuator_lamptype))
  end

  test "should destroy ar_flampactuator_lamptype" do
    assert_difference('ArFlampactuatorLamptype.count', -1) do
      delete :destroy, id: @ar_flampactuator_lamptype
    end

    assert_redirected_to ar_flampactuator_lamptypes_path
  end
end
