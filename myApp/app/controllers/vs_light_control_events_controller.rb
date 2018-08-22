class VsLightControlEventsController < ApplicationController
  before_action :set_vs_light_control_event, only: [:show, :edit, :update, :destroy]

  # GET /vs_light_control_events
  # GET /vs_light_control_events.json
  def index
    @vs_light_control_events = VsLightControlEvent.all
  end

  # GET /vs_light_control_events/1
  # GET /vs_light_control_events/1.json
  def show
  end

  # GET /vs_light_control_events/new
  def new
    @vs_light_control_event = VsLightControlEvent.new
  end

  # GET /vs_light_control_events/1/edit
  def edit
  end

  # POST /vs_light_control_events
  # POST /vs_light_control_events.json
  def create
    @vs_light_control_event = VsLightControlEvent.new(vs_light_control_event_params)

    respond_to do |format|
      if @vs_light_control_event.save
        format.html { redirect_to @vs_light_control_event, notice: 'Vs light control event was successfully created.' }
        format.json { render :show, status: :created, location: @vs_light_control_event }
      else
        format.html { render :new }
        format.json { render json: @vs_light_control_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vs_light_control_events/1
  # PATCH/PUT /vs_light_control_events/1.json
  def update
    respond_to do |format|
      if @vs_light_control_event.update(vs_light_control_event_params)
        format.html { redirect_to @vs_light_control_event, notice: 'Vs light control event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vs_light_control_event }
      else
        format.html { render :edit }
        format.json { render json: @vs_light_control_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vs_light_control_events/1
  # DELETE /vs_light_control_events/1.json
  def destroy
    @vs_light_control_event.destroy
    respond_to do |format|
      format.html { redirect_to vs_light_control_events_url, notice: 'Vs light control event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vs_light_control_event
      @vs_light_control_event = VsLightControlEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vs_light_control_event_params
      params.require(:vs_light_control_event).permit(:name)
    end
end
