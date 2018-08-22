class VfCommunicationEventsController < ApplicationController
  before_action :set_vf_communication_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_communication_events
  # GET /vf_communication_events.json
  def index
    @vf_communication_events = VfCommunicationEvent.all
  end

  # GET /vf_communication_events/1
  # GET /vf_communication_events/1.json
  def show
  end

  # GET /vf_communication_events/new
  def new
    @vf_communication_event = VfCommunicationEvent.new
  end

  # GET /vf_communication_events/1/edit
  def edit
  end

  # POST /vf_communication_events
  # POST /vf_communication_events.json
  def create
    @vf_communication_event = VfCommunicationEvent.new(vf_communication_event_params)

    respond_to do |format|
      if @vf_communication_event.save
        format.html { redirect_to @vf_communication_event, notice: 'Vf communication event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_communication_event }
      else
        format.html { render :new }
        format.json { render json: @vf_communication_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_communication_events/1
  # PATCH/PUT /vf_communication_events/1.json
  def update
    respond_to do |format|
      if @vf_communication_event.update(vf_communication_event_params)
        format.html { redirect_to @vf_communication_event, notice: 'Vf communication event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_communication_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_communication_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_communication_events/1
  # DELETE /vf_communication_events/1.json
  def destroy
    @vf_communication_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_communication_events_url, notice: 'Vf communication event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_communication_event
      @vf_communication_event = VfCommunicationEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_communication_event_params
      params.require(:vf_communication_event).permit(:name)
    end
end
