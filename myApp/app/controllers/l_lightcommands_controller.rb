class LLightcommandsController < ApplicationController
  before_action :set_l_lightcommand, only: [:show, :edit, :update, :destroy]

  # GET /l_lightcommands
  # GET /l_lightcommands.json
  def index
    @l_lightcommands = LLightcommand.all
  end

  # GET /l_lightcommands/1
  # GET /l_lightcommands/1.json
  def show
  end

  # GET /l_lightcommands/new
  def new
    @l_lightcommand = LLightcommand.new
  end

  # GET /l_lightcommands/1/edit
  def edit
  end

  # POST /l_lightcommands
  # POST /l_lightcommands.json
  def create
    @l_lightcommand = LLightcommand.new(l_lightcommand_params)

    respond_to do |format|
      if @l_lightcommand.save
        format.html { redirect_to @l_lightcommand, notice: 'L lightcommand was successfully created.' }
        format.json { render :show, status: :created, location: @l_lightcommand }
      else
        format.html { render :new }
        format.json { render json: @l_lightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_lightcommands/1
  # PATCH/PUT /l_lightcommands/1.json
  def update
    respond_to do |format|
      if @l_lightcommand.update(l_lightcommand_params)
        format.html { redirect_to @l_lightcommand, notice: 'L lightcommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @l_lightcommand }
      else
        format.html { render :edit }
        format.json { render json: @l_lightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_lightcommands/1
  # DELETE /l_lightcommands/1.json
  def destroy
    @l_lightcommand.destroy
    respond_to do |format|
      format.html { redirect_to l_lightcommands_url, notice: 'L lightcommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_lightcommand
      @l_lightcommand = LLightcommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_lightcommand_params
      params.require(:l_lightcommand).permit(:l_lightstate_id, :es_scene_id, :v_reason_id, :cms_refid, :ref_addr_control, :ref_addr_sensor, :expiration, :v_action_id)
    end
end
