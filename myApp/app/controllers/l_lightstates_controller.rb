class LLightstatesController < ApplicationController
  before_action :set_l_lightstate, only: [:show, :edit, :update, :destroy]

  # GET /l_lightstates
  # GET /l_lightstates.json
  def index
    @l_lightstates = LLightstate.all
  end

  # GET /l_lightstates/1
  # GET /l_lightstates/1.json
  def show
  end

  # GET /l_lightstates/new
  def new
    @l_lightstate = LLightstate.new
  end

  # GET /l_lightstates/1/edit
  def edit
  end

  # POST /l_lightstates
  # POST /l_lightstates.json
  def create
    @l_lightstate = LLightstate.new(l_lightstate_params)

    respond_to do |format|
      if @l_lightstate.save
        format.html { redirect_to @l_lightstate, notice: 'L lightstate was successfully created.' }
        format.json { render :show, status: :created, location: @l_lightstate }
      else
        format.html { render :new }
        format.json { render json: @l_lightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_lightstates/1
  # PATCH/PUT /l_lightstates/1.json
  def update
    respond_to do |format|
      if @l_lightstate.update(l_lightstate_params)
        format.html { redirect_to @l_lightstate, notice: 'L lightstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @l_lightstate }
      else
        format.html { render :edit }
        format.json { render json: @l_lightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_lightstates/1
  # DELETE /l_lightstates/1.json
  def destroy
    @l_lightstate.destroy
    respond_to do |format|
      format.html { redirect_to l_lightstates_url, notice: 'L lightstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_lightstate
      @l_lightstate = LLightstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_lightstate_params
      params.require(:l_lightstate).permit(:level, :description)
    end
end
