class SiAlarmCircuitsController < ApplicationController
  before_action :set_si_alarm_circuit, only: [:show, :edit, :update, :destroy]

  # GET /si_alarm_circuits
  # GET /si_alarm_circuits.json
  def index
    @si_alarm_circuits = SiAlarmCircuit.all
  end

  # GET /si_alarm_circuits/1
  # GET /si_alarm_circuits/1.json
  def show
  end

  # GET /si_alarm_circuits/new
  def new
    @si_alarm_circuit = SiAlarmCircuit.new
  end

  # GET /si_alarm_circuits/1/edit
  def edit
  end

  # POST /si_alarm_circuits
  # POST /si_alarm_circuits.json
  def create
    @si_alarm_circuit = SiAlarmCircuit.new(si_alarm_circuit_params)

    respond_to do |format|
      if @si_alarm_circuit.save
        format.html { redirect_to @si_alarm_circuit, notice: 'Si alarm circuit was successfully created.' }
        format.json { render :show, status: :created, location: @si_alarm_circuit }
      else
        format.html { render :new }
        format.json { render json: @si_alarm_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_alarm_circuits/1
  # PATCH/PUT /si_alarm_circuits/1.json
  def update
    respond_to do |format|
      if @si_alarm_circuit.update(si_alarm_circuit_params)
        format.html { redirect_to @si_alarm_circuit, notice: 'Si alarm circuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_alarm_circuit }
      else
        format.html { render :edit }
        format.json { render json: @si_alarm_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_alarm_circuits/1
  # DELETE /si_alarm_circuits/1.json
  def destroy
    @si_alarm_circuit.destroy
    respond_to do |format|
      format.html { redirect_to si_alarm_circuits_url, notice: 'Si alarm circuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_alarm_circuit
      @si_alarm_circuit = SiAlarmCircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_alarm_circuit_params
      params.require(:si_alarm_circuit).permit(:threshold, :num_repeat, :notif_email, :ids_lista_email, :notif_sms, :ids_list_sms, :v_type_alarm_circuit_id, :name)
    end
end
