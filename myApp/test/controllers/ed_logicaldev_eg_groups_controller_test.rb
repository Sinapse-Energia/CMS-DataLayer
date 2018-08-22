require 'test_helper'

class EdLogicaldevEgGroupsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_eg_group = ed_logicaldev_eg_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_eg_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_eg_group" do
    assert_difference('EdLogicaldevEgGroup.count') do
      post :create, ed_logicaldev_eg_group: { ed_logicaldev_id: @ed_logicaldev_eg_group.ed_logicaldev_id, eg_group_id: @ed_logicaldev_eg_group.eg_group_id }
    end

    assert_redirected_to ed_logicaldev_eg_group_path(assigns(:ed_logicaldev_eg_group))
  end

  test "should show ed_logicaldev_eg_group" do
    get :show, id: @ed_logicaldev_eg_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_eg_group
    assert_response :success
  end

  test "should update ed_logicaldev_eg_group" do
    patch :update, id: @ed_logicaldev_eg_group, ed_logicaldev_eg_group: { ed_logicaldev_id: @ed_logicaldev_eg_group.ed_logicaldev_id, eg_group_id: @ed_logicaldev_eg_group.eg_group_id }
    assert_redirected_to ed_logicaldev_eg_group_path(assigns(:ed_logicaldev_eg_group))
  end

  test "should destroy ed_logicaldev_eg_group" do
    assert_difference('EdLogicaldevEgGroup.count', -1) do
      delete :destroy, id: @ed_logicaldev_eg_group
    end

    assert_redirected_to ed_logicaldev_eg_groups_path
  end
end
