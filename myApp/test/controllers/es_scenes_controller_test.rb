require 'test_helper'

class EsScenesControllerTest < ActionController::TestCase
  setup do
    @es_scene = es_scenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:es_scenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create es_scene" do
    assert_difference('EsScene.count') do
      post :create, es_scene: { l_lightstate_id: @es_scene.l_lightstate_id, scene_id: @es_scene.scene_id }
    end

    assert_redirected_to es_scene_path(assigns(:es_scene))
  end

  test "should show es_scene" do
    get :show, id: @es_scene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @es_scene
    assert_response :success
  end

  test "should update es_scene" do
    patch :update, id: @es_scene, es_scene: { l_lightstate_id: @es_scene.l_lightstate_id, scene_id: @es_scene.scene_id }
    assert_redirected_to es_scene_path(assigns(:es_scene))
  end

  test "should destroy es_scene" do
    assert_difference('EsScene.count', -1) do
      delete :destroy, id: @es_scene
    end

    assert_redirected_to es_scenes_path
  end
end
