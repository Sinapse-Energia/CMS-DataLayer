require 'test_helper'

class EdLogicaldevVfElectricalMeterEventsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_vf_electrical_meter_event = ed_logicaldev_vf_electrical_meter_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_vf_electrical_meter_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_vf_electrical_meter_event" do
    assert_difference('EdLogicaldevVfElectricalMeterEvent.count') do
      post :create, ed_logicaldev_vf_electrical_meter_event: { ed_logicaldev_id: @ed_logicaldev_vf_electrical_meter_event.ed_logicaldev_id, v_f_electrical_meter_event_id: @ed_logicaldev_vf_electrical_meter_event.v_f_electrical_meter_event_id }
    end

    assert_redirected_to ed_logicaldev_vf_electrical_meter_event_path(assigns(:ed_logicaldev_vf_electrical_meter_event))
  end

  test "should show ed_logicaldev_vf_electrical_meter_event" do
    get :show, id: @ed_logicaldev_vf_electrical_meter_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_vf_electrical_meter_event
    assert_response :success
  end

  test "should update ed_logicaldev_vf_electrical_meter_event" do
    patch :update, id: @ed_logicaldev_vf_electrical_meter_event, ed_logicaldev_vf_electrical_meter_event: { ed_logicaldev_id: @ed_logicaldev_vf_electrical_meter_event.ed_logicaldev_id, v_f_electrical_meter_event_id: @ed_logicaldev_vf_electrical_meter_event.v_f_electrical_meter_event_id }
    assert_redirected_to ed_logicaldev_vf_electrical_meter_event_path(assigns(:ed_logicaldev_vf_electrical_meter_event))
  end

  test "should destroy ed_logicaldev_vf_electrical_meter_event" do
    assert_difference('EdLogicaldevVfElectricalMeterEvent.count', -1) do
      delete :destroy, id: @ed_logicaldev_vf_electrical_meter_event
    end

    assert_redirected_to ed_logicaldev_vf_electrical_meter_events_path
  end
end
