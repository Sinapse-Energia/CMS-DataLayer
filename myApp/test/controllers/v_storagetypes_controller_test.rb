require 'test_helper'

class VStoragetypesControllerTest < ActionController::TestCase
  setup do
    @v_storagetype = v_storagetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_storagetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_storagetype" do
    assert_difference('VStoragetype.count') do
      post :create, v_storagetype: { name: @v_storagetype.name }
    end

    assert_redirected_to v_storagetype_path(assigns(:v_storagetype))
  end

  test "should show v_storagetype" do
    get :show, id: @v_storagetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_storagetype
    assert_response :success
  end

  test "should update v_storagetype" do
    patch :update, id: @v_storagetype, v_storagetype: { name: @v_storagetype.name }
    assert_redirected_to v_storagetype_path(assigns(:v_storagetype))
  end

  test "should destroy v_storagetype" do
    assert_difference('VStoragetype.count', -1) do
      delete :destroy, id: @v_storagetype
    end

    assert_redirected_to v_storagetypes_path
  end
end
