class VTypeAlarmCircuitsController < ApplicationController
  before_action :set_v_type_alarm_circuit, only: [:show, :edit, :update, :destroy]

  # GET /v_type_alarm_circuits
  # GET /v_type_alarm_circuits.json
  def index
    @v_type_alarm_circuits = VTypeAlarmCircuit.all
  end

  # GET /v_type_alarm_circuits/1
  # GET /v_type_alarm_circuits/1.json
  def show
  end

  # GET /v_type_alarm_circuits/new
  def new
    @v_type_alarm_circuit = VTypeAlarmCircuit.new
  end

  # GET /v_type_alarm_circuits/1/edit
  def edit
  end

  # POST /v_type_alarm_circuits
  # POST /v_type_alarm_circuits.json
  def create
    @v_type_alarm_circuit = VTypeAlarmCircuit.new(v_type_alarm_circuit_params)

    respond_to do |format|
      if @v_type_alarm_circuit.save
        format.html { redirect_to @v_type_alarm_circuit, notice: 'V type alarm circuit was successfully created.' }
        format.json { render :show, status: :created, location: @v_type_alarm_circuit }
      else
        format.html { render :new }
        format.json { render json: @v_type_alarm_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_type_alarm_circuits/1
  # PATCH/PUT /v_type_alarm_circuits/1.json
  def update
    respond_to do |format|
      if @v_type_alarm_circuit.update(v_type_alarm_circuit_params)
        format.html { redirect_to @v_type_alarm_circuit, notice: 'V type alarm circuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_type_alarm_circuit }
      else
        format.html { render :edit }
        format.json { render json: @v_type_alarm_circuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_type_alarm_circuits/1
  # DELETE /v_type_alarm_circuits/1.json
  def destroy
    @v_type_alarm_circuit.destroy
    respond_to do |format|
      format.html { redirect_to v_type_alarm_circuits_url, notice: 'V type alarm circuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_type_alarm_circuit
      @v_type_alarm_circuit = VTypeAlarmCircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_type_alarm_circuit_params
      params.require(:v_type_alarm_circuit).permit(:name)
    end
end
