require 'test_helper'

class ArFlampactuatorScenesControllerTest < ActionController::TestCase
  setup do
    @ar_flampactuator_scene = ar_flampactuator_scenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ar_flampactuator_scenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ar_flampactuator_scene" do
    assert_difference('ArFlampactuatorScene.count') do
      post :create, ar_flampactuator_scene: { es_scene_id: @ar_flampactuator_scene.es_scene_id, f_lampactuator_id: @ar_flampactuator_scene.f_lampactuator_id }
    end

    assert_redirected_to ar_flampactuator_scene_path(assigns(:ar_flampactuator_scene))
  end

  test "should show ar_flampactuator_scene" do
    get :show, id: @ar_flampactuator_scene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ar_flampactuator_scene
    assert_response :success
  end

  test "should update ar_flampactuator_scene" do
    patch :update, id: @ar_flampactuator_scene, ar_flampactuator_scene: { es_scene_id: @ar_flampactuator_scene.es_scene_id, f_lampactuator_id: @ar_flampactuator_scene.f_lampactuator_id }
    assert_redirected_to ar_flampactuator_scene_path(assigns(:ar_flampactuator_scene))
  end

  test "should destroy ar_flampactuator_scene" do
    assert_difference('ArFlampactuatorScene.count', -1) do
      delete :destroy, id: @ar_flampactuator_scene
    end

    assert_redirected_to ar_flampactuator_scenes_path
  end
end
