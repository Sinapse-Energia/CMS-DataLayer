class VfLampactuatorEventsController < ApplicationController
  before_action :set_vf_lampactuator_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_lampactuator_events
  # GET /vf_lampactuator_events.json
  def index
    @vf_lampactuator_events = VfLampactuatorEvent.all
  end

  # GET /vf_lampactuator_events/1
  # GET /vf_lampactuator_events/1.json
  def show
  end

  # GET /vf_lampactuator_events/new
  def new
    @vf_lampactuator_event = VfLampactuatorEvent.new
  end

  # GET /vf_lampactuator_events/1/edit
  def edit
  end

  # POST /vf_lampactuator_events
  # POST /vf_lampactuator_events.json
  def create
    @vf_lampactuator_event = VfLampactuatorEvent.new(vf_lampactuator_event_params)

    respond_to do |format|
      if @vf_lampactuator_event.save
        format.html { redirect_to @vf_lampactuator_event, notice: 'Vf lampactuator event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_lampactuator_event }
      else
        format.html { render :new }
        format.json { render json: @vf_lampactuator_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_lampactuator_events/1
  # PATCH/PUT /vf_lampactuator_events/1.json
  def update
    respond_to do |format|
      if @vf_lampactuator_event.update(vf_lampactuator_event_params)
        format.html { redirect_to @vf_lampactuator_event, notice: 'Vf lampactuator event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_lampactuator_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_lampactuator_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_lampactuator_events/1
  # DELETE /vf_lampactuator_events/1.json
  def destroy
    @vf_lampactuator_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_lampactuator_events_url, notice: 'Vf lampactuator event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_lampactuator_event
      @vf_lampactuator_event = VfLampactuatorEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_lampactuator_event_params
      params.require(:vf_lampactuator_event).permit(:name)
    end
end
