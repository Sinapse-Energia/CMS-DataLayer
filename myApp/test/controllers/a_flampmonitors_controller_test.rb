require 'test_helper'

class AFlampmonitorsControllerTest < ActionController::TestCase
  setup do
    @a_flampmonitor = a_flampmonitors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_flampmonitors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_flampmonitor" do
    assert_difference('AFlampmonitor.count') do
      post :create, a_flampmonitor: { adesc_flampmonitor_id: @a_flampmonitor.adesc_flampmonitor_id, f_lampmonitor_id: @a_flampmonitor.f_lampmonitor_id, seqbridge: @a_flampmonitor.seqbridge, seqcms: @a_flampmonitor.seqcms, value: @a_flampmonitor.value }
    end

    assert_redirected_to a_flampmonitor_path(assigns(:a_flampmonitor))
  end

  test "should show a_flampmonitor" do
    get :show, id: @a_flampmonitor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_flampmonitor
    assert_response :success
  end

  test "should update a_flampmonitor" do
    patch :update, id: @a_flampmonitor, a_flampmonitor: { adesc_flampmonitor_id: @a_flampmonitor.adesc_flampmonitor_id, f_lampmonitor_id: @a_flampmonitor.f_lampmonitor_id, seqbridge: @a_flampmonitor.seqbridge, seqcms: @a_flampmonitor.seqcms, value: @a_flampmonitor.value }
    assert_redirected_to a_flampmonitor_path(assigns(:a_flampmonitor))
  end

  test "should destroy a_flampmonitor" do
    assert_difference('AFlampmonitor.count', -1) do
      delete :destroy, id: @a_flampmonitor
    end

    assert_redirected_to a_flampmonitors_path
  end
end
