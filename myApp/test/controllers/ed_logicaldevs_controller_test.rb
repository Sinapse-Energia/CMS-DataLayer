require 'test_helper'

class EdLogicaldevsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev = ed_logicaldevs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldevs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev" do
    assert_difference('EdLogicaldev.count') do
      post :create, ed_logicaldev: { address: @ed_logicaldev.address, ed_classlogicaldev_id: @ed_logicaldev.ed_classlogicaldev_id, name: @ed_logicaldev.name, qr: @ed_logicaldev.qr, seqbridge: @ed_logicaldev.seqbridge, seqcms: @ed_logicaldev.seqcms }
    end

    assert_redirected_to ed_logicaldev_path(assigns(:ed_logicaldev))
  end

  test "should show ed_logicaldev" do
    get :show, id: @ed_logicaldev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev
    assert_response :success
  end

  test "should update ed_logicaldev" do
    patch :update, id: @ed_logicaldev, ed_logicaldev: { address: @ed_logicaldev.address, ed_classlogicaldev_id: @ed_logicaldev.ed_classlogicaldev_id, name: @ed_logicaldev.name, qr: @ed_logicaldev.qr, seqbridge: @ed_logicaldev.seqbridge, seqcms: @ed_logicaldev.seqcms }
    assert_redirected_to ed_logicaldev_path(assigns(:ed_logicaldev))
  end

  test "should destroy ed_logicaldev" do
    assert_difference('EdLogicaldev.count', -1) do
      delete :destroy, id: @ed_logicaldev
    end

    assert_redirected_to ed_logicaldevs_path
  end
end
