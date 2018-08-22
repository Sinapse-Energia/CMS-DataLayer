class SiPhysicaldevlampsController < ApplicationController
  before_action :set_si_physicaldevlamp, only: [:show, :edit, :update, :destroy]

  # GET /si_physicaldevlamps
  # GET /si_physicaldevlamps.json
  def index
    @si_physicaldevlamps = SiPhysicaldevlamp.all
  end

  # GET /si_physicaldevlamps/1
  # GET /si_physicaldevlamps/1.json
  def show
  end

  # GET /si_physicaldevlamps/new
  def new
    @si_physicaldevlamp = SiPhysicaldevlamp.new
  end

  # GET /si_physicaldevlamps/1/edit
  def edit
  end

  # POST /si_physicaldevlamps
  # POST /si_physicaldevlamps.json
  def create
    @si_physicaldevlamp = SiPhysicaldevlamp.new(si_physicaldevlamp_params)

    respond_to do |format|
      if @si_physicaldevlamp.save
        format.html { redirect_to @si_physicaldevlamp, notice: 'Si physicaldevlamp was successfully created.' }
        format.json { render :show, status: :created, location: @si_physicaldevlamp }
      else
        format.html { render :new }
        format.json { render json: @si_physicaldevlamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_physicaldevlamps/1
  # PATCH/PUT /si_physicaldevlamps/1.json
  def update
    respond_to do |format|
      if @si_physicaldevlamp.update(si_physicaldevlamp_params)
        format.html { redirect_to @si_physicaldevlamp, notice: 'Si physicaldevlamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_physicaldevlamp }
      else
        format.html { render :edit }
        format.json { render json: @si_physicaldevlamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_physicaldevlamps/1
  # DELETE /si_physicaldevlamps/1.json
  def destroy
    @si_physicaldevlamp.destroy
    respond_to do |format|
      format.html { redirect_to si_physicaldevlamps_url, notice: 'Si physicaldevlamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_physicaldevlamp
      @si_physicaldevlamp = SiPhysicaldevlamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_physicaldevlamp_params
      params.require(:si_physicaldevlamp).permit(:name, :cod_ident, :location, :longitude, :latitude, :altitude, :date_installation, :number_lamp, :lamp_power, :v_typelight_id, :v_typelamppost_id, :v_typephysicalsupport_id, :si_physicaldevcircuit_id, :date_data, :name_vial, :lamppost_brand, :lamppost_model, :typelight_brand, :typelight_model, :typelight_power, :lifetime)
    end
end
