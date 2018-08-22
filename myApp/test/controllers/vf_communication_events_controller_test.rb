require 'test_helper'

class VfCommunicationEventsControllerTest < ActionController::TestCase
  setup do
    @vf_communication_event = vf_communication_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_communication_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_communication_event" do
    assert_difference('VfCommunicationEvent.count') do
      post :create, vf_communication_event: { name: @vf_communication_event.name }
    end

    assert_redirected_to vf_communication_event_path(assigns(:vf_communication_event))
  end

  test "should show vf_communication_event" do
    get :show, id: @vf_communication_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_communication_event
    assert_response :success
  end

  test "should update vf_communication_event" do
    patch :update, id: @vf_communication_event, vf_communication_event: { name: @vf_communication_event.name }
    assert_redirected_to vf_communication_event_path(assigns(:vf_communication_event))
  end

  test "should destroy vf_communication_event" do
    assert_difference('VfCommunicationEvent.count', -1) do
      delete :destroy, id: @vf_communication_event
    end

    assert_redirected_to vf_communication_events_path
  end
end
