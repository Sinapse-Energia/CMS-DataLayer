require 'test_helper'

class SiGeneralInformationsControllerTest < ActionController::TestCase
  setup do
    @si_general_information = si_general_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:si_general_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create si_general_information" do
    assert_difference('SiGeneralInformation.count') do
      post :create, si_general_information: { broker: @si_general_information.broker, name: @si_general_information.name, password: @si_general_information.password, port: @si_general_information.port, user: @si_general_information.user }
    end

    assert_redirected_to si_general_information_path(assigns(:si_general_information))
  end

  test "should show si_general_information" do
    get :show, id: @si_general_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @si_general_information
    assert_response :success
  end

  test "should update si_general_information" do
    patch :update, id: @si_general_information, si_general_information: { broker: @si_general_information.broker, name: @si_general_information.name, password: @si_general_information.password, port: @si_general_information.port, user: @si_general_information.user }
    assert_redirected_to si_general_information_path(assigns(:si_general_information))
  end

  test "should destroy si_general_information" do
    assert_difference('SiGeneralInformation.count', -1) do
      delete :destroy, id: @si_general_information
    end

    assert_redirected_to si_general_informations_path
  end
end
