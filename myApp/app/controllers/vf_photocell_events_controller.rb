class VfPhotocellEventsController < ApplicationController
  before_action :set_vf_photocell_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_photocell_events
  # GET /vf_photocell_events.json
  def index
    @vf_photocell_events = VfPhotocellEvent.all
  end

  # GET /vf_photocell_events/1
  # GET /vf_photocell_events/1.json
  def show
  end

  # GET /vf_photocell_events/new
  def new
    @vf_photocell_event = VfPhotocellEvent.new
  end

  # GET /vf_photocell_events/1/edit
  def edit
  end

  # POST /vf_photocell_events
  # POST /vf_photocell_events.json
  def create
    @vf_photocell_event = VfPhotocellEvent.new(vf_photocell_event_params)

    respond_to do |format|
      if @vf_photocell_event.save
        format.html { redirect_to @vf_photocell_event, notice: 'Vf photocell event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_photocell_event }
      else
        format.html { render :new }
        format.json { render json: @vf_photocell_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_photocell_events/1
  # PATCH/PUT /vf_photocell_events/1.json
  def update
    respond_to do |format|
      if @vf_photocell_event.update(vf_photocell_event_params)
        format.html { redirect_to @vf_photocell_event, notice: 'Vf photocell event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_photocell_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_photocell_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_photocell_events/1
  # DELETE /vf_photocell_events/1.json
  def destroy
    @vf_photocell_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_photocell_events_url, notice: 'Vf photocell event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_photocell_event
      @vf_photocell_event = VfPhotocellEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_photocell_event_params
      params.require(:vf_photocell_event).permit(:name)
    end
end
