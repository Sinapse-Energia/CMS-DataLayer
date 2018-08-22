require 'test_helper'

class VsDataCollectEventsControllerTest < ActionController::TestCase
  setup do
    @vs_data_collect_event = vs_data_collect_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vs_data_collect_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vs_data_collect_event" do
    assert_difference('VsDataCollectEvent.count') do
      post :create, vs_data_collect_event: { name: @vs_data_collect_event.name }
    end

    assert_redirected_to vs_data_collect_event_path(assigns(:vs_data_collect_event))
  end

  test "should show vs_data_collect_event" do
    get :show, id: @vs_data_collect_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vs_data_collect_event
    assert_response :success
  end

  test "should update vs_data_collect_event" do
    patch :update, id: @vs_data_collect_event, vs_data_collect_event: { name: @vs_data_collect_event.name }
    assert_redirected_to vs_data_collect_event_path(assigns(:vs_data_collect_event))
  end

  test "should destroy vs_data_collect_event" do
    assert_difference('VsDataCollectEvent.count', -1) do
      delete :destroy, id: @vs_data_collect_event
    end

    assert_redirected_to vs_data_collect_events_path
  end
end
