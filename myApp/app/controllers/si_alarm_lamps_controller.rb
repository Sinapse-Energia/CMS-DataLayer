class SiAlarmLampsController < ApplicationController
  before_action :set_si_alarm_lamp, only: [:show, :edit, :update, :destroy]

  # GET /si_alarm_lamps
  # GET /si_alarm_lamps.json
  def index
    @si_alarm_lamps = SiAlarmLamp.all
  end

  # GET /si_alarm_lamps/1
  # GET /si_alarm_lamps/1.json
  def show
  end

  # GET /si_alarm_lamps/new
  def new
    @si_alarm_lamp = SiAlarmLamp.new
  end

  # GET /si_alarm_lamps/1/edit
  def edit
  end

  # POST /si_alarm_lamps
  # POST /si_alarm_lamps.json
  def create
    @si_alarm_lamp = SiAlarmLamp.new(si_alarm_lamp_params)

    respond_to do |format|
      if @si_alarm_lamp.save
        format.html { redirect_to @si_alarm_lamp, notice: 'Si alarm lamp was successfully created.' }
        format.json { render :show, status: :created, location: @si_alarm_lamp }
      else
        format.html { render :new }
        format.json { render json: @si_alarm_lamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_alarm_lamps/1
  # PATCH/PUT /si_alarm_lamps/1.json
  def update
    respond_to do |format|
      if @si_alarm_lamp.update(si_alarm_lamp_params)
        format.html { redirect_to @si_alarm_lamp, notice: 'Si alarm lamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_alarm_lamp }
      else
        format.html { render :edit }
        format.json { render json: @si_alarm_lamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_alarm_lamps/1
  # DELETE /si_alarm_lamps/1.json
  def destroy
    @si_alarm_lamp.destroy
    respond_to do |format|
      format.html { redirect_to si_alarm_lamps_url, notice: 'Si alarm lamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_alarm_lamp
      @si_alarm_lamp = SiAlarmLamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_alarm_lamp_params
      params.require(:si_alarm_lamp).permit(:threshold, :num_repeat, :notif_email, :ids_lista_email, :notif_sms, :ids_list_sms, :v_type_alarm_lamp_id, :v_threshold_type_id, :name, :si_mqtt_type_alarm_epd_id)
    end
end
