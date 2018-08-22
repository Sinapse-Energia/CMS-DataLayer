require 'test_helper'

class EpControlprogramsControllerTest < ActionController::TestCase
  setup do
    @ep_controlprogram = ep_controlprograms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ep_controlprograms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ep_controlprogram" do
    assert_difference('EpControlprogram.count') do
      post :create, ep_controlprogram: { name: @ep_controlprogram.name, seqbridge: @ep_controlprogram.seqbridge, seqcms: @ep_controlprogram.seqcms }
    end

    assert_redirected_to ep_controlprogram_path(assigns(:ep_controlprogram))
  end

  test "should show ep_controlprogram" do
    get :show, id: @ep_controlprogram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ep_controlprogram
    assert_response :success
  end

  test "should update ep_controlprogram" do
    patch :update, id: @ep_controlprogram, ep_controlprogram: { name: @ep_controlprogram.name, seqbridge: @ep_controlprogram.seqbridge, seqcms: @ep_controlprogram.seqcms }
    assert_redirected_to ep_controlprogram_path(assigns(:ep_controlprogram))
  end

  test "should destroy ep_controlprogram" do
    assert_difference('EpControlprogram.count', -1) do
      delete :destroy, id: @ep_controlprogram
    end

    assert_redirected_to ep_controlprograms_path
  end
end
