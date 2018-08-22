require 'test_helper'

class VfElectricalMeterEventsControllerTest < ActionController::TestCase
  setup do
    @vf_electrical_meter_event = vf_electrical_meter_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_electrical_meter_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_electrical_meter_event" do
    assert_difference('VfElectricalMeterEvent.count') do
      post :create, vf_electrical_meter_event: { name: @vf_electrical_meter_event.name }
    end

    assert_redirected_to vf_electrical_meter_event_path(assigns(:vf_electrical_meter_event))
  end

  test "should show vf_electrical_meter_event" do
    get :show, id: @vf_electrical_meter_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_electrical_meter_event
    assert_response :success
  end

  test "should update vf_electrical_meter_event" do
    patch :update, id: @vf_electrical_meter_event, vf_electrical_meter_event: { name: @vf_electrical_meter_event.name }
    assert_redirected_to vf_electrical_meter_event_path(assigns(:vf_electrical_meter_event))
  end

  test "should destroy vf_electrical_meter_event" do
    assert_difference('VfElectricalMeterEvent.count', -1) do
      delete :destroy, id: @vf_electrical_meter_event
    end

    assert_redirected_to vf_electrical_meter_events_path
  end
end
