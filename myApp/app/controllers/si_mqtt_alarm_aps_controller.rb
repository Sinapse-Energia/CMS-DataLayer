class SiMqttAlarmApsController < ApplicationController
  before_action :set_si_mqtt_alarm_ap, only: [:show, :edit, :update, :destroy]

  # GET /si_mqtt_alarm_aps
  # GET /si_mqtt_alarm_aps.json
  def index
    @si_mqtt_alarm_aps = SiMqttAlarmAp.all
  end

  # GET /si_mqtt_alarm_aps/1
  # GET /si_mqtt_alarm_aps/1.json
  def show
  end

  # GET /si_mqtt_alarm_aps/new
  def new
    @si_mqtt_alarm_ap = SiMqttAlarmAp.new
  end

  # GET /si_mqtt_alarm_aps/1/edit
  def edit
  end

  # POST /si_mqtt_alarm_aps
  # POST /si_mqtt_alarm_aps.json
  def create
    @si_mqtt_alarm_ap = SiMqttAlarmAp.new(si_mqtt_alarm_ap_params)

    respond_to do |format|
      if @si_mqtt_alarm_ap.save
        format.html { redirect_to @si_mqtt_alarm_ap, notice: 'Si mqtt alarm ap was successfully created.' }
        format.json { render :show, status: :created, location: @si_mqtt_alarm_ap }
      else
        format.html { render :new }
        format.json { render json: @si_mqtt_alarm_ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_mqtt_alarm_aps/1
  # PATCH/PUT /si_mqtt_alarm_aps/1.json
  def update
    respond_to do |format|
      if @si_mqtt_alarm_ap.update(si_mqtt_alarm_ap_params)
        format.html { redirect_to @si_mqtt_alarm_ap, notice: 'Si mqtt alarm ap was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_mqtt_alarm_ap }
      else
        format.html { render :edit }
        format.json { render json: @si_mqtt_alarm_ap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_mqtt_alarm_aps/1
  # DELETE /si_mqtt_alarm_aps/1.json
  def destroy
    @si_mqtt_alarm_ap.destroy
    respond_to do |format|
      format.html { redirect_to si_mqtt_alarm_aps_url, notice: 'Si mqtt alarm ap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_mqtt_alarm_ap
      @si_mqtt_alarm_ap = SiMqttAlarmAp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_mqtt_alarm_ap_params
      params.require(:si_mqtt_alarm_ap).permit(:logical_address, :si_mqtt_type_alarm_ap_id, :value, :time_stamp)
    end
end
