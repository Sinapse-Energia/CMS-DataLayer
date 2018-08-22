class VTypeAlarmLampsController < ApplicationController
  before_action :set_v_type_alarm_lamp, only: [:show, :edit, :update, :destroy]

  # GET /v_type_alarm_lamps
  # GET /v_type_alarm_lamps.json
  def index
    @v_type_alarm_lamps = VTypeAlarmLamp.all
  end

  # GET /v_type_alarm_lamps/1
  # GET /v_type_alarm_lamps/1.json
  def show
  end

  # GET /v_type_alarm_lamps/new
  def new
    @v_type_alarm_lamp = VTypeAlarmLamp.new
  end

  # GET /v_type_alarm_lamps/1/edit
  def edit
  end

  # POST /v_type_alarm_lamps
  # POST /v_type_alarm_lamps.json
  def create
    @v_type_alarm_lamp = VTypeAlarmLamp.new(v_type_alarm_lamp_params)

    respond_to do |format|
      if @v_type_alarm_lamp.save
        format.html { redirect_to @v_type_alarm_lamp, notice: 'V type alarm lamp was successfully created.' }
        format.json { render :show, status: :created, location: @v_type_alarm_lamp }
      else
        format.html { render :new }
        format.json { render json: @v_type_alarm_lamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_type_alarm_lamps/1
  # PATCH/PUT /v_type_alarm_lamps/1.json
  def update
    respond_to do |format|
      if @v_type_alarm_lamp.update(v_type_alarm_lamp_params)
        format.html { redirect_to @v_type_alarm_lamp, notice: 'V type alarm lamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_type_alarm_lamp }
      else
        format.html { render :edit }
        format.json { render json: @v_type_alarm_lamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_type_alarm_lamps/1
  # DELETE /v_type_alarm_lamps/1.json
  def destroy
    @v_type_alarm_lamp.destroy
    respond_to do |format|
      format.html { redirect_to v_type_alarm_lamps_url, notice: 'V type alarm lamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_type_alarm_lamp
      @v_type_alarm_lamp = VTypeAlarmLamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_type_alarm_lamp_params
      params.require(:v_type_alarm_lamp).permit(:name)
    end
end
