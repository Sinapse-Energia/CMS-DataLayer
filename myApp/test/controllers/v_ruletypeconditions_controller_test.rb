require 'test_helper'

class VRuletypeconditionsControllerTest < ActionController::TestCase
  setup do
    @v_ruletypecondition = v_ruletypeconditions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_ruletypeconditions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_ruletypecondition" do
    assert_difference('VRuletypecondition.count') do
      post :create, v_ruletypecondition: { name: @v_ruletypecondition.name }
    end

    assert_redirected_to v_ruletypecondition_path(assigns(:v_ruletypecondition))
  end

  test "should show v_ruletypecondition" do
    get :show, id: @v_ruletypecondition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_ruletypecondition
    assert_response :success
  end

  test "should update v_ruletypecondition" do
    patch :update, id: @v_ruletypecondition, v_ruletypecondition: { name: @v_ruletypecondition.name }
    assert_redirected_to v_ruletypecondition_path(assigns(:v_ruletypecondition))
  end

  test "should destroy v_ruletypecondition" do
    assert_difference('VRuletypecondition.count', -1) do
      delete :destroy, id: @v_ruletypecondition
    end

    assert_redirected_to v_ruletypeconditions_path
  end
end
