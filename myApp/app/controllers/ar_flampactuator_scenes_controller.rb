class ArFlampactuatorScenesController < ApplicationController
  before_action :set_ar_flampactuator_scene, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_scenes
  # GET /ar_flampactuator_scenes.json
  def index
    @ar_flampactuator_scenes = ArFlampactuatorScene.all
  end

  # GET /ar_flampactuator_scenes/1
  # GET /ar_flampactuator_scenes/1.json
  def show
  end

  # GET /ar_flampactuator_scenes/new
  def new
    @ar_flampactuator_scene = ArFlampactuatorScene.new
  end

  # GET /ar_flampactuator_scenes/1/edit
  def edit
  end

  # POST /ar_flampactuator_scenes
  # POST /ar_flampactuator_scenes.json
  def create
    @ar_flampactuator_scene = ArFlampactuatorScene.new(ar_flampactuator_scene_params)

    respond_to do |format|
      if @ar_flampactuator_scene.save
        format.html { redirect_to @ar_flampactuator_scene, notice: 'Ar flampactuator scene was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_scene }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_scenes/1
  # PATCH/PUT /ar_flampactuator_scenes/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_scene.update(ar_flampactuator_scene_params)
        format.html { redirect_to @ar_flampactuator_scene, notice: 'Ar flampactuator scene was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_scene }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_scenes/1
  # DELETE /ar_flampactuator_scenes/1.json
  def destroy
    @ar_flampactuator_scene.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_scenes_url, notice: 'Ar flampactuator scene was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_scene
      @ar_flampactuator_scene = ArFlampactuatorScene.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_scene_params
      params.require(:ar_flampactuator_scene).permit(:f_lampactuator_id, :es_scene_id)
    end
end
