class SiAlarmPanelsController < ApplicationController
  before_action :set_si_alarm_panel, only: [:show, :edit, :update, :destroy]

  # GET /si_alarm_panels
  # GET /si_alarm_panels.json
  def index
    @si_alarm_panels = SiAlarmPanel.all
  end

  # GET /si_alarm_panels/1
  # GET /si_alarm_panels/1.json
  def show
  end

  # GET /si_alarm_panels/new
  def new
    @si_alarm_panel = SiAlarmPanel.new
  end

  # GET /si_alarm_panels/1/edit
  def edit
  end

  # POST /si_alarm_panels
  # POST /si_alarm_panels.json
  def create
    @si_alarm_panel = SiAlarmPanel.new(si_alarm_panel_params)

    respond_to do |format|
      if @si_alarm_panel.save
        format.html { redirect_to @si_alarm_panel, notice: 'Si alarm panel was successfully created.' }
        format.json { render :show, status: :created, location: @si_alarm_panel }
      else
        format.html { render :new }
        format.json { render json: @si_alarm_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_alarm_panels/1
  # PATCH/PUT /si_alarm_panels/1.json
  def update
    respond_to do |format|
      if @si_alarm_panel.update(si_alarm_panel_params)
        format.html { redirect_to @si_alarm_panel, notice: 'Si alarm panel was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_alarm_panel }
      else
        format.html { render :edit }
        format.json { render json: @si_alarm_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_alarm_panels/1
  # DELETE /si_alarm_panels/1.json
  def destroy
    @si_alarm_panel.destroy
    respond_to do |format|
      format.html { redirect_to si_alarm_panels_url, notice: 'Si alarm panel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_alarm_panel
      @si_alarm_panel = SiAlarmPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_alarm_panel_params
      params.require(:si_alarm_panel).permit(:threshold, :num_repeat, :notif_email, :ids_lista_email, :notif_sms, :ids_list_sms, :v_type_alarm_panel_id, :v_threshold_type_id, :name, :si_mqtt_type_alarm_ap_id)
    end
end
