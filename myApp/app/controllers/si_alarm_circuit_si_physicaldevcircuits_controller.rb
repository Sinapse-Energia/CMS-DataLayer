class SiAlarmCircuitSiPhysicaldevcircuitsController < ApplicationController
  before_action :set_si_alarm_circuit_si_physicaldevcircuit, only: [:show, :edit, :update, :destroy]

  # GET /si_alarm_circuit_si_physicaldevcircuits
  # GET /si_alarm_circuit_si_physicaldevcircuits.json
  def index
    @si_alarm_circuit_si_physicaldevcircuits = SiAlarmCircuitSiPhysicaldevcircuit.all
  end

  # GET /si_alarm_circuit_si_physicaldevcircuits/1
  # GET /si_alarm_circuit_si_physicaldevcircuits/1.json
  def show
  end

  # GET /si_alarm_circuit_si_physicaldevcircuits/new
  def new
    @si_alarm_circuit_si_physicaldevcircuit = SiAlarmCircuitSiPhysicaldevcircuit.new
  end

  # GET /si_alarm_circuit_si_physicaldevcircuits/1/edit
  def edit
  end

  # POST /si_alarm_circuit_si_physicaldevcircuits
  # POST /si_alarm_circuit_si_physicaldevcircuits.json
  def create
    @si_alarm_circuit_si_physicaldevcircuit = SiAlarmCircuitSiPhysicaldevcircuit.new(si_alarm_circuit_si_physicaldevcircuit_params)

    respond_to do |format|
      if @si_alarm_circuit_si_physicaldevcircuit.save
        format.html { redirect_to @si_alarm_circuit_si_physicaldevcircuit, notice: 'Si alarm circuit si physicaldevcircuit was successfully created.' }
        format.json { render :show, status: :created, location: @si_alarm_circuit_si_physicaldevcircuit }
      else
        format.html { render :new }
        format.json { render json: @si_alarm_circuit_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_alarm_circuit_si_physicaldevcircuits/1
  # PATCH/PUT /si_alarm_circuit_si_physicaldevcircuits/1.json
  def update
    respond_to do |format|
      if @si_alarm_circuit_si_physicaldevcircuit.update(si_alarm_circuit_si_physicaldevcircuit_params)
        format.html { redirect_to @si_alarm_circuit_si_physicaldevcircuit, notice: 'Si alarm circuit si physicaldevcircuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_alarm_circuit_si_physicaldevcircuit }
      else
        format.html { render :edit }
        format.json { render json: @si_alarm_circuit_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_alarm_circuit_si_physicaldevcircuits/1
  # DELETE /si_alarm_circuit_si_physicaldevcircuits/1.json
  def destroy
    @si_alarm_circuit_si_physicaldevcircuit.destroy
    respond_to do |format|
      format.html { redirect_to si_alarm_circuit_si_physicaldevcircuits_url, notice: 'Si alarm circuit si physicaldevcircuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_alarm_circuit_si_physicaldevcircuit
      @si_alarm_circuit_si_physicaldevcircuit = SiAlarmCircuitSiPhysicaldevcircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_alarm_circuit_si_physicaldevcircuit_params
      params.require(:si_alarm_circuit_si_physicaldevcircuit).permit(:si_alarm_circuit_id, :si_physicaldevcircuit_id, :is_group, :is_single, :eg_group_id)
    end
end
