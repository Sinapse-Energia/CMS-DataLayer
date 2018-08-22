require 'test_helper'

class EdLogicaldevSiPhysicaldevlampsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_si_physicaldevlamp = ed_logicaldev_si_physicaldevlamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_si_physicaldevlamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_si_physicaldevlamp" do
    assert_difference('EdLogicaldevSiPhysicaldevlamp.count') do
      post :create, ed_logicaldev_si_physicaldevlamp: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevlamp.ed_logicaldev_id, si_physicaldevlamp_id: @ed_logicaldev_si_physicaldevlamp.si_physicaldevlamp_id }
    end

    assert_redirected_to ed_logicaldev_si_physicaldevlamp_path(assigns(:ed_logicaldev_si_physicaldevlamp))
  end

  test "should show ed_logicaldev_si_physicaldevlamp" do
    get :show, id: @ed_logicaldev_si_physicaldevlamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_si_physicaldevlamp
    assert_response :success
  end

  test "should update ed_logicaldev_si_physicaldevlamp" do
    patch :update, id: @ed_logicaldev_si_physicaldevlamp, ed_logicaldev_si_physicaldevlamp: { ed_logicaldev_id: @ed_logicaldev_si_physicaldevlamp.ed_logicaldev_id, si_physicaldevlamp_id: @ed_logicaldev_si_physicaldevlamp.si_physicaldevlamp_id }
    assert_redirected_to ed_logicaldev_si_physicaldevlamp_path(assigns(:ed_logicaldev_si_physicaldevlamp))
  end

  test "should destroy ed_logicaldev_si_physicaldevlamp" do
    assert_difference('EdLogicaldevSiPhysicaldevlamp.count', -1) do
      delete :destroy, id: @ed_logicaldev_si_physicaldevlamp
    end

    assert_redirected_to ed_logicaldev_si_physicaldevlamps_path
  end
end
