require 'test_helper'

class EdClasslogicaldevsControllerTest < ActionController::TestCase
  setup do
    @ed_classlogicaldev = ed_classlogicaldevs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_classlogicaldevs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_classlogicaldev" do
    assert_difference('EdClasslogicaldev.count') do
      post :create, ed_classlogicaldev: { address: @ed_classlogicaldev.address, name: @ed_classlogicaldev.name, type_device: @ed_classlogicaldev.type_device }
    end

    assert_redirected_to ed_classlogicaldev_path(assigns(:ed_classlogicaldev))
  end

  test "should show ed_classlogicaldev" do
    get :show, id: @ed_classlogicaldev
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_classlogicaldev
    assert_response :success
  end

  test "should update ed_classlogicaldev" do
    patch :update, id: @ed_classlogicaldev, ed_classlogicaldev: { address: @ed_classlogicaldev.address, name: @ed_classlogicaldev.name, type_device: @ed_classlogicaldev.type_device }
    assert_redirected_to ed_classlogicaldev_path(assigns(:ed_classlogicaldev))
  end

  test "should destroy ed_classlogicaldev" do
    assert_difference('EdClasslogicaldev.count', -1) do
      delete :destroy, id: @ed_classlogicaldev
    end

    assert_redirected_to ed_classlogicaldevs_path
  end
end
