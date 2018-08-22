require 'test_helper'

class PActiveperiodastroclocksControllerTest < ActionController::TestCase
  setup do
    @p_activeperiodastroclock = p_activeperiodastroclocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_activeperiodastroclocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_activeperiodastroclock" do
    assert_difference('PActiveperiodastroclock.count') do
      post :create, p_activeperiodastroclock: { ep_controlprogram_id: @p_activeperiodastroclock.ep_controlprogram_id, sunrise_offset: @p_activeperiodastroclock.sunrise_offset, sunset_offset: @p_activeperiodastroclock.sunset_offset }
    end

    assert_redirected_to p_activeperiodastroclock_path(assigns(:p_activeperiodastroclock))
  end

  test "should show p_activeperiodastroclock" do
    get :show, id: @p_activeperiodastroclock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @p_activeperiodastroclock
    assert_response :success
  end

  test "should update p_activeperiodastroclock" do
    patch :update, id: @p_activeperiodastroclock, p_activeperiodastroclock: { ep_controlprogram_id: @p_activeperiodastroclock.ep_controlprogram_id, sunrise_offset: @p_activeperiodastroclock.sunrise_offset, sunset_offset: @p_activeperiodastroclock.sunset_offset }
    assert_redirected_to p_activeperiodastroclock_path(assigns(:p_activeperiodastroclock))
  end

  test "should destroy p_activeperiodastroclock" do
    assert_difference('PActiveperiodastroclock.count', -1) do
      delete :destroy, id: @p_activeperiodastroclock
    end

    assert_redirected_to p_activeperiodastroclocks_path
  end
end
