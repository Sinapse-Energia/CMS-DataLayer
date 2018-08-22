require 'test_helper'

class ArFlampactuatorFeedbacklightcommandsControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_feedbacklightcommand = ar_flampactuator_feedbacklightcommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_feedbacklightcommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_feedbacklightcommand" do
    assert_difference('ArFlampactuatorFeedbacklightcommand.count') do
      post :create, ar_flampactuator_feedbacklightcommand: { f_lampactuator_id: @ar_flampactuator_feedbacklightcommand.f_lampactuator_id, l_lightcommand_id: @ar_flampactuator_feedbacklightcommand.l_lightcommand_id }
    end

    assert_redirected_to ar_flampactuator_feedbacklightcommand_path(assigns(:ar_flampactuator_feedbacklightcommand))
  end

  test "should show ar_flampactuator_feedbacklightcommand" do
    get :show, id: @ar_flampactuator_feedbacklightcommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_feedbacklightcommand
    assert_response :success
  end

  test "should update ar_flampactuator_feedbacklightcommand" do
    patch :update, id: @ar_flampactuator_feedbacklightcommand, ar_flampactuator_feedbacklightcommand: { f_lampactuator_id: @ar_flampactuator_feedbacklightcommand.f_lampactuator_id, l_lightcommand_id: @ar_flampactuator_feedbacklightcommand.l_lightcommand_id }
    assert_redirected_to ar_flampactuator_feedbacklightcommand_path(assigns(:ar_flampactuator_feedbacklightcommand))
  end

  test "should destroy ar_flampactuator_feedbacklightcommand" do
    assert_difference('ArFlampactuatorFeedbacklightcommand.count', -1) do
      delete :destroy, id: @ar_flampactuator_feedbacklightcommand
    end

    assert_redirected_to ar_flampactuator_feedbacklightcommands_path
  end
end
