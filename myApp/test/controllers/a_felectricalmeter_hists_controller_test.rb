require 'test_helper'

class AFelectricalmeterHistsControllerTest < ActionController::TestCase
  setup do
    @a_felectricalmeter_hist = a_felectricalmeter_hists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_felectricalmeter_hists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_felectricalmeter_hist" do
    assert_difference('AFelectricalmeterHist.count') do
      post :create, a_felectricalmeter_hist: { adesc_felectricalmeter_id: @a_felectricalmeter_hist.adesc_felectricalmeter_id, ed_logicaldev_id: @a_felectricalmeter_hist.ed_logicaldev_id, time_stamp: @a_felectricalmeter_hist.time_stamp, type_count: @a_felectricalmeter_hist.type_count, value: @a_felectricalmeter_hist.value }
    end

    assert_redirected_to a_felectricalmeter_hist_path(assigns(:a_felectricalmeter_hist))
  end

  test "should show a_felectricalmeter_hist" do
    get :show, id: @a_felectricalmeter_hist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_felectricalmeter_hist
    assert_response :success
  end

  test "should update a_felectricalmeter_hist" do
    patch :update, id: @a_felectricalmeter_hist, a_felectricalmeter_hist: { adesc_felectricalmeter_id: @a_felectricalmeter_hist.adesc_felectricalmeter_id, ed_logicaldev_id: @a_felectricalmeter_hist.ed_logicaldev_id, time_stamp: @a_felectricalmeter_hist.time_stamp, type_count: @a_felectricalmeter_hist.type_count, value: @a_felectricalmeter_hist.value }
    assert_redirected_to a_felectricalmeter_hist_path(assigns(:a_felectricalmeter_hist))
  end

  test "should destroy a_felectricalmeter_hist" do
    assert_difference('AFelectricalmeterHist.count', -1) do
      delete :destroy, id: @a_felectricalmeter_hist
    end

    assert_redirected_to a_felectricalmeter_hists_path
  end
end
