require 'test_helper'

class VStateregulatorsControllerTest < ActionController::TestCase
  setup do
    @v_stateregulator = v_stateregulators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_stateregulators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_stateregulator" do
    assert_difference('VStateregulator.count') do
      post :create, v_stateregulator: { name: @v_stateregulator.name }
    end

    assert_redirected_to v_stateregulator_path(assigns(:v_stateregulator))
  end

  test "should show v_stateregulator" do
    get :show, id: @v_stateregulator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_stateregulator
    assert_response :success
  end

  test "should update v_stateregulator" do
    patch :update, id: @v_stateregulator, v_stateregulator: { name: @v_stateregulator.name }
    assert_redirected_to v_stateregulator_path(assigns(:v_stateregulator))
  end

  test "should destroy v_stateregulator" do
    assert_difference('VStateregulator.count', -1) do
      delete :destroy, id: @v_stateregulator
    end

    assert_redirected_to v_stateregulators_path
  end
end
