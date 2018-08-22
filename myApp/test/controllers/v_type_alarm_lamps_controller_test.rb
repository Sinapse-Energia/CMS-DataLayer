require 'test_helper'

class VTypeAlarmLampsControllerTest < ActionController::TestCase
  setup do
    @v_type_alarm_lamp = v_type_alarm_lamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_type_alarm_lamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_type_alarm_lamp" do
    assert_difference('VTypeAlarmLamp.count') do
      post :create, v_type_alarm_lamp: { name: @v_type_alarm_lamp.name }
    end

    assert_redirected_to v_type_alarm_lamp_path(assigns(:v_type_alarm_lamp))
  end

  test "should show v_type_alarm_lamp" do
    get :show, id: @v_type_alarm_lamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_type_alarm_lamp
    assert_response :success
  end

  test "should update v_type_alarm_lamp" do
    patch :update, id: @v_type_alarm_lamp, v_type_alarm_lamp: { name: @v_type_alarm_lamp.name }
    assert_redirected_to v_type_alarm_lamp_path(assigns(:v_type_alarm_lamp))
  end

  test "should destroy v_type_alarm_lamp" do
    assert_difference('VTypeAlarmLamp.count', -1) do
      delete :destroy, id: @v_type_alarm_lamp
    end

    assert_redirected_to v_type_alarm_lamps_path
  end
end
