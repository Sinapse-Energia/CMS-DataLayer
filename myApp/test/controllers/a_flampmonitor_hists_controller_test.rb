require 'test_helper'

class AFlampmonitorHistsControllerTest < ActionController::TestCase
  setup do
    @a_flampmonitor_hist = a_flampmonitor_hists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_flampmonitor_hists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_flampmonitor_hist" do
    assert_difference('AFlampmonitorHist.count') do
      post :create, a_flampmonitor_hist: { adesc_flampmonitor_id: @a_flampmonitor_hist.adesc_flampmonitor_id, ed_logicaldev_id: @a_flampmonitor_hist.ed_logicaldev_id, time_stamp: @a_flampmonitor_hist.time_stamp, type_count: @a_flampmonitor_hist.type_count, value: @a_flampmonitor_hist.value }
    end

    assert_redirected_to a_flampmonitor_hist_path(assigns(:a_flampmonitor_hist))
  end

  test "should show a_flampmonitor_hist" do
    get :show, id: @a_flampmonitor_hist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_flampmonitor_hist
    assert_response :success
  end

  test "should update a_flampmonitor_hist" do
    patch :update, id: @a_flampmonitor_hist, a_flampmonitor_hist: { adesc_flampmonitor_id: @a_flampmonitor_hist.adesc_flampmonitor_id, ed_logicaldev_id: @a_flampmonitor_hist.ed_logicaldev_id, time_stamp: @a_flampmonitor_hist.time_stamp, type_count: @a_flampmonitor_hist.type_count, value: @a_flampmonitor_hist.value }
    assert_redirected_to a_flampmonitor_hist_path(assigns(:a_flampmonitor_hist))
  end

  test "should destroy a_flampmonitor_hist" do
    assert_difference('AFlampmonitorHist.count', -1) do
      delete :destroy, id: @a_flampmonitor_hist
    end

    assert_redirected_to a_flampmonitor_hists_path
  end
end
