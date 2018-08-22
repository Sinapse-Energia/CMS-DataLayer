require 'test_helper'

class VfPhotocellEventsControllerTest < ActionController::TestCase
  setup do
    @vf_photocell_event = vf_photocell_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vf_photocell_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vf_photocell_event" do
    assert_difference('VfPhotocellEvent.count') do
      post :create, vf_photocell_event: { name: @vf_photocell_event.name }
    end

    assert_redirected_to vf_photocell_event_path(assigns(:vf_photocell_event))
  end

  test "should show vf_photocell_event" do
    get :show, id: @vf_photocell_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vf_photocell_event
    assert_response :success
  end

  test "should update vf_photocell_event" do
    patch :update, id: @vf_photocell_event, vf_photocell_event: { name: @vf_photocell_event.name }
    assert_redirected_to vf_photocell_event_path(assigns(:vf_photocell_event))
  end

  test "should destroy vf_photocell_event" do
    assert_difference('VfPhotocellEvent.count', -1) do
      delete :destroy, id: @vf_photocell_event
    end

    assert_redirected_to vf_photocell_events_path
  end
end
