require 'test_helper'

class AFcommsControllerTest < ActionController::TestCase
  setup do
    @a_fcomm = a_fcomms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_fcomms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_fcomm" do
    assert_difference('AFcomm.count') do
      post :create, a_fcomm: { adesc_fcomm_id: @a_fcomm.adesc_fcomm_id, f_communication_id: @a_fcomm.f_communication_id, seqbridge: @a_fcomm.seqbridge, seqcms: @a_fcomm.seqcms, value: @a_fcomm.value }
    end

    assert_redirected_to a_fcomm_path(assigns(:a_fcomm))
  end

  test "should show a_fcomm" do
    get :show, id: @a_fcomm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_fcomm
    assert_response :success
  end

  test "should update a_fcomm" do
    patch :update, id: @a_fcomm, a_fcomm: { adesc_fcomm_id: @a_fcomm.adesc_fcomm_id, f_communication_id: @a_fcomm.f_communication_id, seqbridge: @a_fcomm.seqbridge, seqcms: @a_fcomm.seqcms, value: @a_fcomm.value }
    assert_redirected_to a_fcomm_path(assigns(:a_fcomm))
  end

  test "should destroy a_fcomm" do
    assert_difference('AFcomm.count', -1) do
      delete :destroy, id: @a_fcomm
    end

    assert_redirected_to a_fcomms_path
  end
end
