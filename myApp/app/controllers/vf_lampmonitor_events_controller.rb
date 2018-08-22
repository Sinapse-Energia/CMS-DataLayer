class VfLampmonitorEventsController < ApplicationController
  before_action :set_vf_lampmonitor_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_lampmonitor_events
  # GET /vf_lampmonitor_events.json
  def index
    @vf_lampmonitor_events = VfLampmonitorEvent.all
  end

  # GET /vf_lampmonitor_events/1
  # GET /vf_lampmonitor_events/1.json
  def show
  end

  # GET /vf_lampmonitor_events/new
  def new
    @vf_lampmonitor_event = VfLampmonitorEvent.new
  end

  # GET /vf_lampmonitor_events/1/edit
  def edit
  end

  # POST /vf_lampmonitor_events
  # POST /vf_lampmonitor_events.json
  def create
    @vf_lampmonitor_event = VfLampmonitorEvent.new(vf_lampmonitor_event_params)

    respond_to do |format|
      if @vf_lampmonitor_event.save
        format.html { redirect_to @vf_lampmonitor_event, notice: 'Vf lampmonitor event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_lampmonitor_event }
      else
        format.html { render :new }
        format.json { render json: @vf_lampmonitor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_lampmonitor_events/1
  # PATCH/PUT /vf_lampmonitor_events/1.json
  def update
    respond_to do |format|
      if @vf_lampmonitor_event.update(vf_lampmonitor_event_params)
        format.html { redirect_to @vf_lampmonitor_event, notice: 'Vf lampmonitor event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_lampmonitor_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_lampmonitor_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_lampmonitor_events/1
  # DELETE /vf_lampmonitor_events/1.json
  def destroy
    @vf_lampmonitor_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_lampmonitor_events_url, notice: 'Vf lampmonitor event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_lampmonitor_event
      @vf_lampmonitor_event = VfLampmonitorEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_lampmonitor_event_params
      params.require(:vf_lampmonitor_event).permit(:name)
    end
end
