require 'test_helper'

class SiRfCommunicationsControllerTest < ActionController::TestCase
  setup do
    @si_rf_communication = si_rf_communications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_rf_communications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_rf_communication" do
    assert_difference('SiRfCommunication.count') do
      post :create, si_rf_communication: { alert_status: @si_rf_communication.alert_status, ed_logicaldev_id: @si_rf_communication.ed_logicaldev_id, historical_not_valid: @si_rf_communication.historical_not_valid, historical_valid: @si_rf_communication.historical_valid, lamp_status: @si_rf_communication.lamp_status, last_day_not_valid: @si_rf_communication.last_day_not_valid, last_day_valid: @si_rf_communication.last_day_valid, last_x_not_valid: @si_rf_communication.last_x_not_valid, last_x_valid: @si_rf_communication.last_x_valid, previous_last_day_not_valid: @si_rf_communication.previous_last_day_not_valid, previous_last_day_valid: @si_rf_communication.previous_last_day_valid, repeater: @si_rf_communication.repeater, rf_coverage: @si_rf_communication.rf_coverage, rf_coverage_pd: @si_rf_communication.rf_coverage_pd, rf_not_valid: @si_rf_communication.rf_not_valid, rf_not_valid_pd: @si_rf_communication.rf_not_valid_pd, rf_valid: @si_rf_communication.rf_valid, rf_valid_pd: @si_rf_communication.rf_valid_pd, rf_variation: @si_rf_communication.rf_variation, status: @si_rf_communication.status }
    end

    assert_redirected_to si_rf_communication_path(assigns(:si_rf_communication))
  end

  test "should show si_rf_communication" do
    get :show, id: @si_rf_communication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_rf_communication
    assert_response :success
  end

  test "should update si_rf_communication" do
    patch :update, id: @si_rf_communication, si_rf_communication: { alert_status: @si_rf_communication.alert_status, ed_logicaldev_id: @si_rf_communication.ed_logicaldev_id, historical_not_valid: @si_rf_communication.historical_not_valid, historical_valid: @si_rf_communication.historical_valid, lamp_status: @si_rf_communication.lamp_status, last_day_not_valid: @si_rf_communication.last_day_not_valid, last_day_valid: @si_rf_communication.last_day_valid, last_x_not_valid: @si_rf_communication.last_x_not_valid, last_x_valid: @si_rf_communication.last_x_valid, previous_last_day_not_valid: @si_rf_communication.previous_last_day_not_valid, previous_last_day_valid: @si_rf_communication.previous_last_day_valid, repeater: @si_rf_communication.repeater, rf_coverage: @si_rf_communication.rf_coverage, rf_coverage_pd: @si_rf_communication.rf_coverage_pd, rf_not_valid: @si_rf_communication.rf_not_valid, rf_not_valid_pd: @si_rf_communication.rf_not_valid_pd, rf_valid: @si_rf_communication.rf_valid, rf_valid_pd: @si_rf_communication.rf_valid_pd, rf_variation: @si_rf_communication.rf_variation, status: @si_rf_communication.status }
    assert_redirected_to si_rf_communication_path(assigns(:si_rf_communication))
  end

  test "should destroy si_rf_communication" do
    assert_difference('SiRfCommunication.count', -1) do
      delete :destroy, id: @si_rf_communication
    end

    assert_redirected_to si_rf_communications_path
  end
end
