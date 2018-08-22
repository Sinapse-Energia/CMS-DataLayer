require 'test_helper'

class AFlampactuatorsControllerTest < ActionController::TestCase
  setup do
    @a_flampactuator = a_flampactuators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:a_flampactuators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create a_flampactuator" do
    assert_difference('AFlampactuator.count') do
      post :create, a_flampactuator: { adesc_flampactuator_id: @a_flampactuator.adesc_flampactuator_id, f_lampactuator_id: @a_flampactuator.f_lampactuator_id, seqbridge: @a_flampactuator.seqbridge, seqcms: @a_flampactuator.seqcms, value: @a_flampactuator.value }
    end

    assert_redirected_to a_flampactuator_path(assigns(:a_flampactuator))
  end

  test "should show a_flampactuator" do
    get :show, id: @a_flampactuator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @a_flampactuator
    assert_response :success
  end

  test "should update a_flampactuator" do
    patch :update, id: @a_flampactuator, a_flampactuator: { adesc_flampactuator_id: @a_flampactuator.adesc_flampactuator_id, f_lampactuator_id: @a_flampactuator.f_lampactuator_id, seqbridge: @a_flampactuator.seqbridge, seqcms: @a_flampactuator.seqcms, value: @a_flampactuator.value }
    assert_redirected_to a_flampactuator_path(assigns(:a_flampactuator))
  end

  test "should destroy a_flampactuator" do
    assert_difference('AFlampactuator.count', -1) do
      delete :destroy, id: @a_flampactuator
    end

    assert_redirected_to a_flampactuators_path
  end
end
