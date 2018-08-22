class VfElectricalMeterEventsController < ApplicationController
  before_action :set_vf_electrical_meter_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_electrical_meter_events
  # GET /vf_electrical_meter_events.json
  def index
    @vf_electrical_meter_events = VfElectricalMeterEvent.all
  end

  # GET /vf_electrical_meter_events/1
  # GET /vf_electrical_meter_events/1.json
  def show
  end

  # GET /vf_electrical_meter_events/new
  def new
    @vf_electrical_meter_event = VfElectricalMeterEvent.new
  end

  # GET /vf_electrical_meter_events/1/edit
  def edit
  end

  # POST /vf_electrical_meter_events
  # POST /vf_electrical_meter_events.json
  def create
    @vf_electrical_meter_event = VfElectricalMeterEvent.new(vf_electrical_meter_event_params)

    respond_to do |format|
      if @vf_electrical_meter_event.save
        format.html { redirect_to @vf_electrical_meter_event, notice: 'Vf electrical meter event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_electrical_meter_event }
      else
        format.html { render :new }
        format.json { render json: @vf_electrical_meter_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_electrical_meter_events/1
  # PATCH/PUT /vf_electrical_meter_events/1.json
  def update
    respond_to do |format|
      if @vf_electrical_meter_event.update(vf_electrical_meter_event_params)
        format.html { redirect_to @vf_electrical_meter_event, notice: 'Vf electrical meter event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_electrical_meter_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_electrical_meter_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_electrical_meter_events/1
  # DELETE /vf_electrical_meter_events/1.json
  def destroy
    @vf_electrical_meter_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_electrical_meter_events_url, notice: 'Vf electrical meter event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_electrical_meter_event
      @vf_electrical_meter_event = VfElectricalMeterEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_electrical_meter_event_params
      params.require(:vf_electrical_meter_event).permit(:name)
    end
end
