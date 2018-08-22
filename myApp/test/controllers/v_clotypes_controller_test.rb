require 'test_helper'

class VClotypesControllerTest < ActionController::TestCase
  setup do
    @v_clotype = v_clotypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v_clotypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v_clotype" do
    assert_difference('VClotype.count') do
      post :create, v_clotype: { name: @v_clotype.name }
    end

    assert_redirected_to v_clotype_path(assigns(:v_clotype))
  end

  test "should show v_clotype" do
    get :show, id: @v_clotype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v_clotype
    assert_response :success
  end

  test "should update v_clotype" do
    patch :update, id: @v_clotype, v_clotype: { name: @v_clotype.name }
    assert_redirected_to v_clotype_path(assigns(:v_clotype))
  end

  test "should destroy v_clotype" do
    assert_difference('VClotype.count', -1) do
      delete :destroy, id: @v_clotype
    end

    assert_redirected_to v_clotypes_path
  end
end
