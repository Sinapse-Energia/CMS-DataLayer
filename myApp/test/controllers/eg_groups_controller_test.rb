require 'test_helper'

class EgGroupsControllerTest < ActionController::TestCase
  setup do
    @eg_group = eg_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eg_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eg_group" do
    assert_difference('EgGroup.count') do
      post :create, eg_group: { address: @eg_group.address, v_purpose_id: @eg_group.v_purpose_id }
    end

    assert_redirected_to eg_group_path(assigns(:eg_group))
  end

  test "should show eg_group" do
    get :show, id: @eg_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eg_group
    assert_response :success
  end

  test "should update eg_group" do
    patch :update, id: @eg_group, eg_group: { address: @eg_group.address, v_purpose_id: @eg_group.v_purpose_id }
    assert_redirected_to eg_group_path(assigns(:eg_group))
  end

  test "should destroy eg_group" do
    assert_difference('EgGroup.count', -1) do
      delete :destroy, id: @eg_group
    end

    assert_redirected_to eg_groups_path
  end
end
