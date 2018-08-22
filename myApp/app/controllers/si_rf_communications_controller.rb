class SiRfCommunicationsController < ApplicationController
  before_action :set_si_rf_communication, only: [:show, :edit, :update, :destroy]

  # GET /si_rf_communications
  # GET /si_rf_communications.json
  def index
    @si_rf_communications = SiRfCommunication.all
  end

  # GET /si_rf_communications/1
  # GET /si_rf_communications/1.json
  def show
  end

  # GET /si_rf_communications/new
  def new
    @si_rf_communication = SiRfCommunication.new
  end

  # GET /si_rf_communications/1/edit
  def edit
  end

  # POST /si_rf_communications
  # POST /si_rf_communications.json
  def create
    @si_rf_communication = SiRfCommunication.new(si_rf_communication_params)

    respond_to do |format|
      if @si_rf_communication.save
        format.html { redirect_to @si_rf_communication, notice: 'Si rf communication was successfully created.' }
        format.json { render :show, status: :created, location: @si_rf_communication }
      else
        format.html { render :new }
        format.json { render json: @si_rf_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_rf_communications/1
  # PATCH/PUT /si_rf_communications/1.json
  def update
    respond_to do |format|
      if @si_rf_communication.update(si_rf_communication_params)
        format.html { redirect_to @si_rf_communication, notice: 'Si rf communication was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_rf_communication }
      else
        format.html { render :edit }
        format.json { render json: @si_rf_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_rf_communications/1
  # DELETE /si_rf_communications/1.json
  def destroy
    @si_rf_communication.destroy
    respond_to do |format|
      format.html { redirect_to si_rf_communications_url, notice: 'Si rf communication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_rf_communication
      @si_rf_communication = SiRfCommunication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_rf_communication_params
      params.require(:si_rf_communication).permit(:ed_logicaldev_id, :historical_valid, :historical_not_valid, :last_day_valid, :last_day_not_valid, :last_x_valid, :last_x_not_valid, :status, :repeater, :previous_last_day_valid, :previous_last_day_not_valid, :lamp_status, :alert_status, :rf_coverage, :rf_valid, :rf_not_valid, :rf_coverage_pd, :rf_valid_pd, :rf_not_valid_pd, :rf_variation)
    end
end
