class ArFlampactuatorDefaultscenestatesController < ApplicationController
  before_action :set_ar_flampactuator_defaultscenestate, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_defaultscenestates
  # GET /ar_flampactuator_defaultscenestates.json
  def index
    @ar_flampactuator_defaultscenestates = ArFlampactuatorDefaultscenestate.all
  end

  # GET /ar_flampactuator_defaultscenestates/1
  # GET /ar_flampactuator_defaultscenestates/1.json
  def show
  end

  # GET /ar_flampactuator_defaultscenestates/new
  def new
    @ar_flampactuator_defaultscenestate = ArFlampactuatorDefaultscenestate.new
  end

  # GET /ar_flampactuator_defaultscenestates/1/edit
  def edit
  end

  # POST /ar_flampactuator_defaultscenestates
  # POST /ar_flampactuator_defaultscenestates.json
  def create
    @ar_flampactuator_defaultscenestate = ArFlampactuatorDefaultscenestate.new(ar_flampactuator_defaultscenestate_params)

    respond_to do |format|
      if @ar_flampactuator_defaultscenestate.save
        format.html { redirect_to @ar_flampactuator_defaultscenestate, notice: 'Ar flampactuator defaultscenestate was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_defaultscenestate }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_defaultscenestate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_defaultscenestates/1
  # PATCH/PUT /ar_flampactuator_defaultscenestates/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_defaultscenestate.update(ar_flampactuator_defaultscenestate_params)
        format.html { redirect_to @ar_flampactuator_defaultscenestate, notice: 'Ar flampactuator defaultscenestate was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_defaultscenestate }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_defaultscenestate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_defaultscenestates/1
  # DELETE /ar_flampactuator_defaultscenestates/1.json
  def destroy
    @ar_flampactuator_defaultscenestate.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_defaultscenestates_url, notice: 'Ar flampactuator defaultscenestate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_defaultscenestate
      @ar_flampactuator_defaultscenestate = ArFlampactuatorDefaultscenestate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_defaultscenestate_params
      params.require(:ar_flampactuator_defaultscenestate).permit(:f_lampactuator_id, :l_lightstate_id)
    end
end
