require 'test_helper'

class VfLightSensorEventsControllerTest < ActionController::TestCase
  setup do
    @vf_light_sensor_event = vf_light_sensor_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_light_sensor_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_light_sensor_event" do
    assert_difference('VfLightSensorEvent.count') do
      post :create, vf_light_sensor_event: { name: @vf_light_sensor_event.name }
    end

    assert_redirected_to vf_light_sensor_event_path(assigns(:vf_light_sensor_event))
  end

  test "should show vf_light_sensor_event" do
    get :show, id: @vf_light_sensor_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_light_sensor_event
    assert_response :success
  end

  test "should update vf_light_sensor_event" do
    patch :update, id: @vf_light_sensor_event, vf_light_sensor_event: { name: @vf_light_sensor_event.name }
    assert_redirected_to vf_light_sensor_event_path(assigns(:vf_light_sensor_event))
  end

  test "should destroy vf_light_sensor_event" do
    assert_difference('VfLightSensorEvent.count', -1) do
      delete :destroy, id: @vf_light_sensor_event
    end

    assert_redirected_to vf_light_sensor_events_path
  end
end
