class SiMqttAlarmEpdsController < ApplicationController
  before_action :set_si_mqtt_alarm_epd, only: [:show, :edit, :update, :destroy]

  # GET /si_mqtt_alarm_epds
  # GET /si_mqtt_alarm_epds.json
  def index
    @si_mqtt_alarm_epds = SiMqttAlarmEpd.all
  end

  # GET /si_mqtt_alarm_epds/1
  # GET /si_mqtt_alarm_epds/1.json
  def show
  end

  # GET /si_mqtt_alarm_epds/new
  def new
    @si_mqtt_alarm_epd = SiMqttAlarmEpd.new
  end

  # GET /si_mqtt_alarm_epds/1/edit
  def edit
  end

  # POST /si_mqtt_alarm_epds
  # POST /si_mqtt_alarm_epds.json
  def create
    @si_mqtt_alarm_epd = SiMqttAlarmEpd.new(si_mqtt_alarm_epd_params)

    respond_to do |format|
      if @si_mqtt_alarm_epd.save
        format.html { redirect_to @si_mqtt_alarm_epd, notice: 'Si mqtt alarm epd was successfully created.' }
        format.json { render :show, status: :created, location: @si_mqtt_alarm_epd }
      else
        format.html { render :new }
        format.json { render json: @si_mqtt_alarm_epd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_mqtt_alarm_epds/1
  # PATCH/PUT /si_mqtt_alarm_epds/1.json
  def update
    respond_to do |format|
      if @si_mqtt_alarm_epd.update(si_mqtt_alarm_epd_params)
        format.html { redirect_to @si_mqtt_alarm_epd, notice: 'Si mqtt alarm epd was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_mqtt_alarm_epd }
      else
        format.html { render :edit }
        format.json { render json: @si_mqtt_alarm_epd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_mqtt_alarm_epds/1
  # DELETE /si_mqtt_alarm_epds/1.json
  def destroy
    @si_mqtt_alarm_epd.destroy
    respond_to do |format|
      format.html { redirect_to si_mqtt_alarm_epds_url, notice: 'Si mqtt alarm epd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_mqtt_alarm_epd
      @si_mqtt_alarm_epd = SiMqttAlarmEpd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_mqtt_alarm_epd_params
      params.require(:si_mqtt_alarm_epd).permit(:logical_address, :si_mqtt_type_alarm_epd_id, :value, :time_stamp)
    end
end
