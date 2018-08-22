class SiPhysicaldevpanelsController < ApplicationController
  before_action :set_si_physicaldevpanel, only: [:show, :edit, :update, :destroy]

  # GET /si_physicaldevpanels
  # GET /si_physicaldevpanels.json
  def index
    @si_physicaldevpanels = SiPhysicaldevpanel.all
  end

  # GET /si_physicaldevpanels/1
  # GET /si_physicaldevpanels/1.json
  def show
  end

  # GET /si_physicaldevpanels/new
  def new
    @si_physicaldevpanel = SiPhysicaldevpanel.new
  end

  # GET /si_physicaldevpanels/1/edit
  def edit
  end

  # POST /si_physicaldevpanels
  # POST /si_physicaldevpanels.json
  def create
    @si_physicaldevpanel = SiPhysicaldevpanel.new(si_physicaldevpanel_params)

    respond_to do |format|
      if @si_physicaldevpanel.save
        format.html { redirect_to @si_physicaldevpanel, notice: 'Si physicaldevpanel was successfully created.' }
        format.json { render :show, status: :created, location: @si_physicaldevpanel }
      else
        format.html { render :new }
        format.json { render json: @si_physicaldevpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_physicaldevpanels/1
  # PATCH/PUT /si_physicaldevpanels/1.json
  def update
    respond_to do |format|
      if @si_physicaldevpanel.update(si_physicaldevpanel_params)
        format.html { redirect_to @si_physicaldevpanel, notice: 'Si physicaldevpanel was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_physicaldevpanel }
      else
        format.html { render :edit }
        format.json { render json: @si_physicaldevpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_physicaldevpanels/1
  # DELETE /si_physicaldevpanels/1.json
  def destroy
    @si_physicaldevpanel.destroy
    respond_to do |format|
      format.html { redirect_to si_physicaldevpanels_url, notice: 'Si physicaldevpanel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_physicaldevpanel
      @si_physicaldevpanel = SiPhysicaldevpanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_physicaldevpanel_params
      params.require(:si_physicaldevpanel).permit(:name, :cod_ident, :location, :longitude, :latitude, :altitude, :date_installation, :date_data, :cod_module, :name_vial, :number_vial, :power_installed, :power_contracted, :switch_general, :protection_mag, :protection_diff, :number_supply, :number_countpower, :clock_brand, :clock_model, :number_circuit, :v_typecommand_id)
    end
end
