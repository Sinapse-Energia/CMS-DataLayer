class VsDataCollectEventsController < ApplicationController
  before_action :set_vs_data_collect_event, only: [:show, :edit, :update, :destroy]

  # GET /vs_data_collect_events
  # GET /vs_data_collect_events.json
  def index
    @vs_data_collect_events = VsDataCollectEvent.all
  end

  # GET /vs_data_collect_events/1
  # GET /vs_data_collect_events/1.json
  def show
  end

  # GET /vs_data_collect_events/new
  def new
    @vs_data_collect_event = VsDataCollectEvent.new
  end

  # GET /vs_data_collect_events/1/edit
  def edit
  end

  # POST /vs_data_collect_events
  # POST /vs_data_collect_events.json
  def create
    @vs_data_collect_event = VsDataCollectEvent.new(vs_data_collect_event_params)

    respond_to do |format|
      if @vs_data_collect_event.save
        format.html { redirect_to @vs_data_collect_event, notice: 'Vs data collect event was successfully created.' }
        format.json { render :show, status: :created, location: @vs_data_collect_event }
      else
        format.html { render :new }
        format.json { render json: @vs_data_collect_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vs_data_collect_events/1
  # PATCH/PUT /vs_data_collect_events/1.json
  def update
    respond_to do |format|
      if @vs_data_collect_event.update(vs_data_collect_event_params)
        format.html { redirect_to @vs_data_collect_event, notice: 'Vs data collect event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vs_data_collect_event }
      else
        format.html { render :edit }
        format.json { render json: @vs_data_collect_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vs_data_collect_events/1
  # DELETE /vs_data_collect_events/1.json
  def destroy
    @vs_data_collect_event.destroy
    respond_to do |format|
      format.html { redirect_to vs_data_collect_events_url, notice: 'Vs data collect event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vs_data_collect_event
      @vs_data_collect_event = VsDataCollectEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vs_data_collect_event_params
      params.require(:vs_data_collect_event).permit(:name)
    end
end
