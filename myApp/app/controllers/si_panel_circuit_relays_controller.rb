class SiPanelCircuitRelaysController < ApplicationController
  before_action :set_si_panel_circuit_relay, only: [:show, :edit, :update, :destroy]

  # GET /si_panel_circuit_relays
  # GET /si_panel_circuit_relays.json
  def index
    @si_panel_circuit_relays = SiPanelCircuitRelay.all
  end

  # GET /si_panel_circuit_relays/1
  # GET /si_panel_circuit_relays/1.json
  def show
  end

  # GET /si_panel_circuit_relays/new
  def new
    @si_panel_circuit_relay = SiPanelCircuitRelay.new
  end

  # GET /si_panel_circuit_relays/1/edit
  def edit
  end

  # POST /si_panel_circuit_relays
  # POST /si_panel_circuit_relays.json
  def create
    @si_panel_circuit_relay = SiPanelCircuitRelay.new(si_panel_circuit_relay_params)

    respond_to do |format|
      if @si_panel_circuit_relay.save
        format.html { redirect_to @si_panel_circuit_relay, notice: 'Si panel circuit relay was successfully created.' }
        format.json { render :show, status: :created, location: @si_panel_circuit_relay }
      else
        format.html { render :new }
        format.json { render json: @si_panel_circuit_relay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_panel_circuit_relays/1
  # PATCH/PUT /si_panel_circuit_relays/1.json
  def update
    respond_to do |format|
      if @si_panel_circuit_relay.update(si_panel_circuit_relay_params)
        format.html { redirect_to @si_panel_circuit_relay, notice: 'Si panel circuit relay was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_panel_circuit_relay }
      else
        format.html { render :edit }
        format.json { render json: @si_panel_circuit_relay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_panel_circuit_relays/1
  # DELETE /si_panel_circuit_relays/1.json
  def destroy
    @si_panel_circuit_relay.destroy
    respond_to do |format|
      format.html { redirect_to si_panel_circuit_relays_url, notice: 'Si panel circuit relay was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_panel_circuit_relay
      @si_panel_circuit_relay = SiPanelCircuitRelay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_panel_circuit_relay_params
      params.require(:si_panel_circuit_relay).permit(:si_physicaldevpanel_id, :si_physicaldevcircuit_id, :relay, :status)
    end
end
