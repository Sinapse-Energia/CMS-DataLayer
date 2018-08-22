require 'test_helper'

class VOccurrencesControllerTest < ActionController::TestCase
  setup do
    @v_occurrence = v_occurrences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_occurrences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_occurrence" do
    assert_difference('VOccurrence.count') do
      post :create, v_occurrence: { name: @v_occurrence.name }
    end

    assert_redirected_to v_occurrence_path(assigns(:v_occurrence))
  end

  test "should show v_occurrence" do
    get :show, id: @v_occurrence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_occurrence
    assert_response :success
  end

  test "should update v_occurrence" do
    patch :update, id: @v_occurrence, v_occurrence: { name: @v_occurrence.name }
    assert_redirected_to v_occurrence_path(assigns(:v_occurrence))
  end

  test "should destroy v_occurrence" do
    assert_difference('VOccurrence.count', -1) do
      delete :destroy, id: @v_occurrence
    end

    assert_redirected_to v_occurrences_path
  end
end
