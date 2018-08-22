require 'test_helper'

class VsLightControlEventsControllerTest < ActionController::TestCase
  setup do
    @vs_light_control_event = vs_light_control_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vs_light_control_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vs_light_control_event" do
    assert_difference('VsLightControlEvent.count') do
      post :create, vs_light_control_event: { name: @vs_light_control_event.name }
    end

    assert_redirected_to vs_light_control_event_path(assigns(:vs_light_control_event))
  end

  test "should show vs_light_control_event" do
    get :show, id: @vs_light_control_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vs_light_control_event
    assert_response :success
  end

  test "should update vs_light_control_event" do
    patch :update, id: @vs_light_control_event, vs_light_control_event: { name: @vs_light_control_event.name }
    assert_redirected_to vs_light_control_event_path(assigns(:vs_light_control_event))
  end

  test "should destroy vs_light_control_event" do
    assert_difference('VsLightControlEvent.count', -1) do
      delete :destroy, id: @vs_light_control_event
    end

    assert_redirected_to vs_light_control_events_path
  end
end
