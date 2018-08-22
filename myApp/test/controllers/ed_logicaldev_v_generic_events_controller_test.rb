require 'test_helper'

class EdLogicaldevVGenericEventsControllerTest < ActionController::TestCase
  setup do
    @ed_logicaldev_v_generic_event = ed_logicaldev_v_generic_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ed_logicaldev_v_generic_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ed_logicaldev_v_generic_event" do
    assert_difference('EdLogicaldevVGenericEvent.count') do
      post :create, ed_logicaldev_v_generic_event: { ed_logicaldev_id: @ed_logicaldev_v_generic_event.ed_logicaldev_id, v_generic_event_id: @ed_logicaldev_v_generic_event.v_generic_event_id }
    end

    assert_redirected_to ed_logicaldev_v_generic_event_path(assigns(:ed_logicaldev_v_generic_event))
  end

  test "should show ed_logicaldev_v_generic_event" do
    get :show, id: @ed_logicaldev_v_generic_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ed_logicaldev_v_generic_event
    assert_response :success
  end

  test "should update ed_logicaldev_v_generic_event" do
    patch :update, id: @ed_logicaldev_v_generic_event, ed_logicaldev_v_generic_event: { ed_logicaldev_id: @ed_logicaldev_v_generic_event.ed_logicaldev_id, v_generic_event_id: @ed_logicaldev_v_generic_event.v_generic_event_id }
    assert_redirected_to ed_logicaldev_v_generic_event_path(assigns(:ed_logicaldev_v_generic_event))
  end

  test "should destroy ed_logicaldev_v_generic_event" do
    assert_difference('EdLogicaldevVGenericEvent.count', -1) do
      delete :destroy, id: @ed_logicaldev_v_generic_event
    end

    assert_redirected_to ed_logicaldev_v_generic_events_path
  end
end
