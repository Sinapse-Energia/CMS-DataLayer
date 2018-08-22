require 'test_helper'

class AFbridgesControllerTest < ActionController::TestCase
  setup do
    @a_fbridge = a_fbridges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_fbridges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_fbridge" do
    assert_difference('AFbridge.count') do
      post :create, a_fbridge: { adesc_fbridge_id: @a_fbridge.adesc_fbridge_id, f_bridge_id: @a_fbridge.f_bridge_id, seqbridge: @a_fbridge.seqbridge, seqcms: @a_fbridge.seqcms, value: @a_fbridge.value }
    end

    assert_redirected_to a_fbridge_path(assigns(:a_fbridge))
  end

  test "should show a_fbridge" do
    get :show, id: @a_fbridge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_fbridge
    assert_response :success
  end

  test "should update a_fbridge" do
    patch :update, id: @a_fbridge, a_fbridge: { adesc_fbridge_id: @a_fbridge.adesc_fbridge_id, f_bridge_id: @a_fbridge.f_bridge_id, seqbridge: @a_fbridge.seqbridge, seqcms: @a_fbridge.seqcms, value: @a_fbridge.value }
    assert_redirected_to a_fbridge_path(assigns(:a_fbridge))
  end

  test "should destroy a_fbridge" do
    assert_difference('AFbridge.count', -1) do
      delete :destroy, id: @a_fbridge
    end

    assert_redirected_to a_fbridges_path
  end
end
