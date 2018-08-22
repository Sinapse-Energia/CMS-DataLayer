require 'test_helper'

class VsDataPkgTransferEventsControllerTest < ActionController::TestCase
  setup do
    @vs_data_pkg_transfer_event = vs_data_pkg_transfer_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vs_data_pkg_transfer_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vs_data_pkg_transfer_event" do
    assert_difference('VsDataPkgTransferEvent.count') do
      post :create, vs_data_pkg_transfer_event: { name: @vs_data_pkg_transfer_event.name }
    end

    assert_redirected_to vs_data_pkg_transfer_event_path(assigns(:vs_data_pkg_transfer_event))
  end

  test "should show vs_data_pkg_transfer_event" do
    get :show, id: @vs_data_pkg_transfer_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vs_data_pkg_transfer_event
    assert_response :success
  end

  test "should update vs_data_pkg_transfer_event" do
    patch :update, id: @vs_data_pkg_transfer_event, vs_data_pkg_transfer_event: { name: @vs_data_pkg_transfer_event.name }
    assert_redirected_to vs_data_pkg_transfer_event_path(assigns(:vs_data_pkg_transfer_event))
  end

  test "should destroy vs_data_pkg_transfer_event" do
    assert_difference('VsDataPkgTransferEvent.count', -1) do
      delete :destroy, id: @vs_data_pkg_transfer_event
    end

    assert_redirected_to vs_data_pkg_transfer_events_path
  end
end
