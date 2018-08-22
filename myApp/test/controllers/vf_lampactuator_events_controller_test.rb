require 'test_helper'

class VfLampactuatorEventsControllerTest < ActionController::TestCase
  setup do
    @vf_lampactuator_event = vf_lampactuator_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_lampactuator_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_lampactuator_event" do
    assert_difference('VfLampactuatorEvent.count') do
      post :create, vf_lampactuator_event: { name: @vf_lampactuator_event.name }
    end

    assert_redirected_to vf_lampactuator_event_path(assigns(:vf_lampactuator_event))
  end

  test "should show vf_lampactuator_event" do
    get :show, id: @vf_lampactuator_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_lampactuator_event
    assert_response :success
  end

  test "should update vf_lampactuator_event" do
    patch :update, id: @vf_lampactuator_event, vf_lampactuator_event: { name: @vf_lampactuator_event.name }
    assert_redirected_to vf_lampactuator_event_path(assigns(:vf_lampactuator_event))
  end

  test "should destroy vf_lampactuator_event" do
    assert_difference('VfLampactuatorEvent.count', -1) do
      delete :destroy, id: @vf_lampactuator_event
    end

    assert_redirected_to vf_lampactuator_events_path
  end
end
