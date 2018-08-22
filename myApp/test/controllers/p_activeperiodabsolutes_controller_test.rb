require 'test_helper'

class PActiveperiodabsolutesControllerTest < ActionController::TestCase
  setup do
    @p_activeperiodabsolute = p_activeperiodabsolutes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_activeperiodabsolutes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_activeperiodabsolute" do
    assert_difference('PActiveperiodabsolute.count') do
      post :create, p_activeperiodabsolute: { end_time: @p_activeperiodabsolute.end_time, ep_controlprogram_id: @p_activeperiodabsolute.ep_controlprogram_id, start_time: @p_activeperiodabsolute.start_time }
    end

    assert_redirected_to p_activeperiodabsolute_path(assigns(:p_activeperiodabsolute))
  end

  test "should show p_activeperiodabsolute" do
    get :show, id: @p_activeperiodabsolute
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_activeperiodabsolute
    assert_response :success
  end

  test "should update p_activeperiodabsolute" do
    patch :update, id: @p_activeperiodabsolute, p_activeperiodabsolute: { end_time: @p_activeperiodabsolute.end_time, ep_controlprogram_id: @p_activeperiodabsolute.ep_controlprogram_id, start_time: @p_activeperiodabsolute.start_time }
    assert_redirected_to p_activeperiodabsolute_path(assigns(:p_activeperiodabsolute))
  end

  test "should destroy p_activeperiodabsolute" do
    assert_difference('PActiveperiodabsolute.count', -1) do
      delete :destroy, id: @p_activeperiodabsolute
    end

    assert_redirected_to p_activeperiodabsolutes_path
  end
end
