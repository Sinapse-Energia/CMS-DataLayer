class EsScenesController < ApplicationController
  before_action :set_es_scene, only: [:show, :edit, :update, :destroy]

  # GET /es_scenes
  # GET /es_scenes.json
  def index
    @es_scenes = EsScene.all
  end

  # GET /es_scenes/1
  # GET /es_scenes/1.json
  def show
  end

  # GET /es_scenes/new
  def new
    @es_scene = EsScene.new
  end

  # GET /es_scenes/1/edit
  def edit
  end

  # POST /es_scenes
  # POST /es_scenes.json
  def create
    @es_scene = EsScene.new(es_scene_params)

    respond_to do |format|
      if @es_scene.save
        format.html { redirect_to @es_scene, notice: 'Es scene was successfully created.' }
        format.json { render :show, status: :created, location: @es_scene }
      else
        format.html { render :new }
        format.json { render json: @es_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /es_scenes/1
  # PATCH/PUT /es_scenes/1.json
  def update
    respond_to do |format|
      if @es_scene.update(es_scene_params)
        format.html { redirect_to @es_scene, notice: 'Es scene was successfully updated.' }
        format.json { render :show, status: :ok, location: @es_scene }
      else
        format.html { render :edit }
        format.json { render json: @es_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /es_scenes/1
  # DELETE /es_scenes/1.json
  def destroy
    @es_scene.destroy
    respond_to do |format|
      format.html { redirect_to es_scenes_url, notice: 'Es scene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_es_scene
      @es_scene = EsScene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def es_scene_params
      params.require(:es_scene).permit(:scene_id, :l_lightstate_id)
    end
end
