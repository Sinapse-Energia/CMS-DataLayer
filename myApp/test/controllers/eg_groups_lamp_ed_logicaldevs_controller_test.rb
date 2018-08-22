require 'test_helper'

class EgGroupsLampEdLogicaldevsControllerTest < ActionController::TestCase
  setup do
    @eg_groups_lamp_ed_logicaldev = eg_groups_lamp_ed_logicaldevs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eg_groups_lamp_ed_logicaldevs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eg_groups_lamp_ed_logicaldev" do
    assert_difference('EgGroupsLampEdLogicaldev.count') do
      post :create, eg_groups_lamp_ed_logicaldev: { ed_logicaldev_id: @eg_groups_lamp_ed_logicaldev.ed_logicaldev_id, eg_group_id: @eg_groups_lamp_ed_logicaldev.eg_group_id }
    end

    assert_redirected_to eg_groups_lamp_ed_logicaldev_path(assigns(:eg_groups_lamp_ed_logicaldev))
  end

  test "should show eg_groups_lamp_ed_logicaldev" do
    get :show, id: @eg_groups_lamp_ed_logicaldev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eg_groups_lamp_ed_logicaldev
    assert_response :success
  end

  test "should update eg_groups_lamp_ed_logicaldev" do
    patch :update, id: @eg_groups_lamp_ed_logicaldev, eg_groups_lamp_ed_logicaldev: { ed_logicaldev_id: @eg_groups_lamp_ed_logicaldev.ed_logicaldev_id, eg_group_id: @eg_groups_lamp_ed_logicaldev.eg_group_id }
    assert_redirected_to eg_groups_lamp_ed_logicaldev_path(assigns(:eg_groups_lamp_ed_logicaldev))
  end

  test "should destroy eg_groups_lamp_ed_logicaldev" do
    assert_difference('EgGroupsLampEdLogicaldev.count', -1) do
      delete :destroy, id: @eg_groups_lamp_ed_logicaldev
    end

    assert_redirected_to eg_groups_lamp_ed_logicaldevs_path
  end
end
