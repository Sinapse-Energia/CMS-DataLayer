require 'test_helper'

class VfLampmonitorEventsControllerTest < ActionController::TestCase
  setup do
    @vf_lampmonitor_event = vf_lampmonitor_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_lampmonitor_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_lampmonitor_event" do
    assert_difference('VfLampmonitorEvent.count') do
      post :create, vf_lampmonitor_event: { name: @vf_lampmonitor_event.name }
    end

    assert_redirected_to vf_lampmonitor_event_path(assigns(:vf_lampmonitor_event))
  end

  test "should show vf_lampmonitor_event" do
    get :show, id: @vf_lampmonitor_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_lampmonitor_event
    assert_response :success
  end

  test "should update vf_lampmonitor_event" do
    patch :update, id: @vf_lampmonitor_event, vf_lampmonitor_event: { name: @vf_lampmonitor_event.name }
    assert_redirected_to vf_lampmonitor_event_path(assigns(:vf_lampmonitor_event))
  end

  test "should destroy vf_lampmonitor_event" do
    assert_difference('VfLampmonitorEvent.count', -1) do
      delete :destroy, id: @vf_lampmonitor_event
    end

    assert_redirected_to vf_lampmonitor_events_path
  end
end
