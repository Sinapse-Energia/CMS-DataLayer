require 'test_helper'

class EdLogicaldevSiPhysicaldevpanelsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_si_physicaldevpanel = ed_logicaldev_si_physicaldevpanels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_si_physicaldevpanels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_si_physicaldevpanel" do
    assert_difference('EdLogicaldevSiPhysicaldevpanel.count') do
      post :create, ed_logicaldev_si_physicaldevpanel: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevpanel.ed_logicaldev_id, si_physicaldevpanel_id: @ed_logicaldev_si_physicaldevpanel.si_physicaldevpanel_id }
    end

    assert_redirected_to ed_logicaldev_si_physicaldevpanel_path(assigns(:ed_logicaldev_si_physicaldevpanel))
  end

  test "should show ed_logicaldev_si_physicaldevpanel" do
    get :show, id: @ed_logicaldev_si_physicaldevpanel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_si_physicaldevpanel
    assert_response :success
  end

  test "should update ed_logicaldev_si_physicaldevpanel" do
    patch :update, id: @ed_logicaldev_si_physicaldevpanel, ed_logicaldev_si_physicaldevpanel: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevpanel.ed_logicaldev_id, si_physicaldevpanel_id: @ed_logicaldev_si_physicaldevpanel.si_physicaldevpanel_id }
    assert_redirected_to ed_logicaldev_si_physicaldevpanel_path(assigns(:ed_logicaldev_si_physicaldevpanel))
  end

  test "should destroy ed_logicaldev_si_physicaldevpanel" do
    assert_difference('EdLogicaldevSiPhysicaldevpanel.count', -1) do
      delete :destroy, id: @ed_logicaldev_si_physicaldevpanel
    end

    assert_redirected_to ed_logicaldev_si_physicaldevpanels_path
  end
end
