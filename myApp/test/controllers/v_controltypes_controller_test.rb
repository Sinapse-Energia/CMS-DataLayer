require 'test_helper'

class VControltypesControllerTest < ActionController::TestCase
  setup do
    @v_controltype = v_controltypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_controltypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_controltype" do
    assert_difference('VControltype.count') do
      post :create, v_controltype: { name: @v_controltype.name }
    end

    assert_redirected_to v_controltype_path(assigns(:v_controltype))
  end

  test "should show v_controltype" do
    get :show, id: @v_controltype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_controltype
    assert_response :success
  end

  test "should update v_controltype" do
    patch :update, id: @v_controltype, v_controltype: { name: @v_controltype.name }
    assert_redirected_to v_controltype_path(assigns(:v_controltype))
  end

  test "should destroy v_controltype" do
    assert_difference('VControltype.count', -1) do
      delete :destroy, id: @v_controltype
    end

    assert_redirected_to v_controltypes_path
  end
end
