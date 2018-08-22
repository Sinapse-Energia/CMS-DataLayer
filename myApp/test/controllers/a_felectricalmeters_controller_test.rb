require 'test_helper'

class AFelectricalmetersControllerTest < ActionController::TestCase
  setup do
    @a_felectricalmeter = a_felectricalmeters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_felectricalmeters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_felectricalmeter" do
    assert_difference('AFelectricalmeter.count') do
      post :create, a_felectricalmeter: { adesc_felectricalmeter_id: @a_felectricalmeter.adesc_felectricalmeter_id, f_electricalmeter_id: @a_felectricalmeter.f_electricalmeter_id, seqbridge: @a_felectricalmeter.seqbridge, seqcms: @a_felectricalmeter.seqcms, value: @a_felectricalmeter.value }
    end

    assert_redirected_to a_felectricalmeter_path(assigns(:a_felectricalmeter))
  end

  test "should show a_felectricalmeter" do
    get :show, id: @a_felectricalmeter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_felectricalmeter
    assert_response :success
  end

  test "should update a_felectricalmeter" do
    patch :update, id: @a_felectricalmeter, a_felectricalmeter: { adesc_felectricalmeter_id: @a_felectricalmeter.adesc_felectricalmeter_id, f_electricalmeter_id: @a_felectricalmeter.f_electricalmeter_id, seqbridge: @a_felectricalmeter.seqbridge, seqcms: @a_felectricalmeter.seqcms, value: @a_felectricalmeter.value }
    assert_redirected_to a_felectricalmeter_path(assigns(:a_felectricalmeter))
  end

  test "should destroy a_felectricalmeter" do
    assert_difference('AFelectricalmeter.count', -1) do
      delete :destroy, id: @a_felectricalmeter
    end

    assert_redirected_to a_felectricalmeters_path
  end
end
