class SiAlarmLampEdLogicaldevsController < ApplicationController
  before_action :set_si_alarm_lamp_ed_logicaldev, only: [:show, :edit, :update, :destroy]

  # GET /si_alarm_lamp_ed_logicaldevs
  # GET /si_alarm_lamp_ed_logicaldevs.json
  def index
    @si_alarm_lamp_ed_logicaldevs = SiAlarmLampEdLogicaldev.all
  end

  # GET /si_alarm_lamp_ed_logicaldevs/1
  # GET /si_alarm_lamp_ed_logicaldevs/1.json
  def show
  end

  # GET /si_alarm_lamp_ed_logicaldevs/new
  def new
    @si_alarm_lamp_ed_logicaldev = SiAlarmLampEdLogicaldev.new
  end

  # GET /si_alarm_lamp_ed_logicaldevs/1/edit
  def edit
  end

  # POST /si_alarm_lamp_ed_logicaldevs
  # POST /si_alarm_lamp_ed_logicaldevs.json
  def create
    @si_alarm_lamp_ed_logicaldev = SiAlarmLampEdLogicaldev.new(si_alarm_lamp_ed_logicaldev_params)

    respond_to do |format|
      if @si_alarm_lamp_ed_logicaldev.save
        format.html { redirect_to @si_alarm_lamp_ed_logicaldev, notice: 'Si alarm lamp ed logicaldev was successfully created.' }
        format.json { render :show, status: :created, location: @si_alarm_lamp_ed_logicaldev }
      else
        format.html { render :new }
        format.json { render json: @si_alarm_lamp_ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_alarm_lamp_ed_logicaldevs/1
  # PATCH/PUT /si_alarm_lamp_ed_logicaldevs/1.json
  def update
    respond_to do |format|
      if @si_alarm_lamp_ed_logicaldev.update(si_alarm_lamp_ed_logicaldev_params)
        format.html { redirect_to @si_alarm_lamp_ed_logicaldev, notice: 'Si alarm lamp ed logicaldev was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_alarm_lamp_ed_logicaldev }
      else
        format.html { render :edit }
        format.json { render json: @si_alarm_lamp_ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_alarm_lamp_ed_logicaldevs/1
  # DELETE /si_alarm_lamp_ed_logicaldevs/1.json
  def destroy
    @si_alarm_lamp_ed_logicaldev.destroy
    respond_to do |format|
      format.html { redirect_to si_alarm_lamp_ed_logicaldevs_url, notice: 'Si alarm lamp ed logicaldev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_alarm_lamp_ed_logicaldev
      @si_alarm_lamp_ed_logicaldev = SiAlarmLampEdLogicaldev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_alarm_lamp_ed_logicaldev_params
      params.require(:si_alarm_lamp_ed_logicaldev).permit(:si_alarm_lamp_id, :ed_logicaldev_id, :is_group, :is_single, :eg_group_id)
    end
end
