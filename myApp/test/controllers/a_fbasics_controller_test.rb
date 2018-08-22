require 'test_helper'

class AFbasicsControllerTest < ActionController::TestCase
  setup do
    @a_fbasic = a_fbasics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_fbasics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_fbasic" do
    assert_difference('AFbasic.count') do
      post :create, a_fbasic: { adesc_fbasic_id: @a_fbasic.adesc_fbasic_id, f_basic_id: @a_fbasic.f_basic_id, seqbridge: @a_fbasic.seqbridge, seqcms: @a_fbasic.seqcms, value: @a_fbasic.value }
    end

    assert_redirected_to a_fbasic_path(assigns(:a_fbasic))
  end

  test "should show a_fbasic" do
    get :show, id: @a_fbasic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_fbasic
    assert_response :success
  end

  test "should update a_fbasic" do
    patch :update, id: @a_fbasic, a_fbasic: { adesc_fbasic_id: @a_fbasic.adesc_fbasic_id, f_basic_id: @a_fbasic.f_basic_id, seqbridge: @a_fbasic.seqbridge, seqcms: @a_fbasic.seqcms, value: @a_fbasic.value }
    assert_redirected_to a_fbasic_path(assigns(:a_fbasic))
  end

  test "should destroy a_fbasic" do
    assert_difference('AFbasic.count', -1) do
      delete :destroy, id: @a_fbasic
    end

    assert_redirected_to a_fbasics_path
  end
end
