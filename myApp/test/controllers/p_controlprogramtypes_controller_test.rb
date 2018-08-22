require 'test_helper'

class PControlprogramtypesControllerTest < ActionController::TestCase
  setup do
    @p_controlprogramtype = p_controlprogramtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_controlprogramtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_controlprogramtype" do
    assert_difference('PControlprogramtype.count') do
      post :create, p_controlprogramtype: { ep_controlprogram_id: @p_controlprogramtype.ep_controlprogram_id, v_typeactiveperiod_id: @p_controlprogramtype.v_typeactiveperiod_id }
    end

    assert_redirected_to p_controlprogramtype_path(assigns(:p_controlprogramtype))
  end

  test "should show p_controlprogramtype" do
    get :show, id: @p_controlprogramtype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_controlprogramtype
    assert_response :success
  end

  test "should update p_controlprogramtype" do
    patch :update, id: @p_controlprogramtype, p_controlprogramtype: { ep_controlprogram_id: @p_controlprogramtype.ep_controlprogram_id, v_typeactiveperiod_id: @p_controlprogramtype.v_typeactiveperiod_id }
    assert_redirected_to p_controlprogramtype_path(assigns(:p_controlprogramtype))
  end

  test "should destroy p_controlprogramtype" do
    assert_difference('PControlprogramtype.count', -1) do
      delete :destroy, id: @p_controlprogramtype
    end

    assert_redirected_to p_controlprogramtypes_path
  end
end
