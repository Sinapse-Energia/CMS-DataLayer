require 'test_helper'

class VGenericEventsControllerTest < ActionController::TestCase
  setup do
    @v_generic_event = v_generic_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_generic_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_generic_event" do
    assert_difference('VGenericEvent.count') do
      post :create, v_generic_event: { name: @v_generic_event.name }
    end

    assert_redirected_to v_generic_event_path(assigns(:v_generic_event))
  end

  test "should show v_generic_event" do
    get :show, id: @v_generic_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_generic_event
    assert_response :success
  end

  test "should update v_generic_event" do
    patch :update, id: @v_generic_event, v_generic_event: { name: @v_generic_event.name }
    assert_redirected_to v_generic_event_path(assigns(:v_generic_event))
  end

  test "should destroy v_generic_event" do
    assert_difference('VGenericEvent.count', -1) do
      delete :destroy, id: @v_generic_event
    end

    assert_redirected_to v_generic_events_path
  end
end
