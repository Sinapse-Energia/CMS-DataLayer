require 'test_helper'

class LSensorsControllerTest < ActionController::TestCase
  setup do
    @l_sensor = l_sensors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:l_sensors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create l_sensor" do
    assert_difference('LSensor.count') do
      post :create, l_sensor: { sensor_address: @l_sensor.sensor_address }
    end

    assert_redirected_to l_sensor_path(assigns(:l_sensor))
  end

  test "should show l_sensor" do
    get :show, id: @l_sensor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @l_sensor
    assert_response :success
  end

  test "should update l_sensor" do
    patch :update, id: @l_sensor, l_sensor: { sensor_address: @l_sensor.sensor_address }
    assert_redirected_to l_sensor_path(assigns(:l_sensor))
  end

  test "should destroy l_sensor" do
    assert_difference('LSensor.count', -1) do
      delete :destroy, id: @l_sensor
    end

    assert_redirected_to l_sensors_path
  end
end
