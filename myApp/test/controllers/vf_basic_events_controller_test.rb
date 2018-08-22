require 'test_helper'

class VfBasicEventsControllerTest < ActionController::TestCase
  setup do
    @vf_basic_event = vf_basic_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_basic_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_basic_event" do
    assert_difference('VfBasicEvent.count') do
      post :create, vf_basic_event: { name: @vf_basic_event.name }
    end

    assert_redirected_to vf_basic_event_path(assigns(:vf_basic_event))
  end

  test "should show vf_basic_event" do
    get :show, id: @vf_basic_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_basic_event
    assert_response :success
  end

  test "should update vf_basic_event" do
    patch :update, id: @vf_basic_event, vf_basic_event: { name: @vf_basic_event.name }
    assert_redirected_to vf_basic_event_path(assigns(:vf_basic_event))
  end

  test "should destroy vf_basic_event" do
    assert_difference('VfBasicEvent.count', -1) do
      delete :destroy, id: @vf_basic_event
    end

    assert_redirected_to vf_basic_events_path
  end
end
