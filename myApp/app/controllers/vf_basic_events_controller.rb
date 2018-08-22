class VfBasicEventsController < ApplicationController
  before_action :set_vf_basic_event, only: [:show, :edit, :update, :destroy]

  # GET /vf_basic_events
  # GET /vf_basic_events.json
  def index
    @vf_basic_events = VfBasicEvent.all
  end

  # GET /vf_basic_events/1
  # GET /vf_basic_events/1.json
  def show
  end

  # GET /vf_basic_events/new
  def new
    @vf_basic_event = VfBasicEvent.new
  end

  # GET /vf_basic_events/1/edit
  def edit
  end

  # POST /vf_basic_events
  # POST /vf_basic_events.json
  def create
    @vf_basic_event = VfBasicEvent.new(vf_basic_event_params)

    respond_to do |format|
      if @vf_basic_event.save
        format.html { redirect_to @vf_basic_event, notice: 'Vf basic event was successfully created.' }
        format.json { render :show, status: :created, location: @vf_basic_event }
      else
        format.html { render :new }
        format.json { render json: @vf_basic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vf_basic_events/1
  # PATCH/PUT /vf_basic_events/1.json
  def update
    respond_to do |format|
      if @vf_basic_event.update(vf_basic_event_params)
        format.html { redirect_to @vf_basic_event, notice: 'Vf basic event was successfully updated.' }
        format.json { render :show, status: :ok, location: @vf_basic_event }
      else
        format.html { render :edit }
        format.json { render json: @vf_basic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vf_basic_events/1
  # DELETE /vf_basic_events/1.json
  def destroy
    @vf_basic_event.destroy
    respond_to do |format|
      format.html { redirect_to vf_basic_events_url, notice: 'Vf basic event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vf_basic_event
      @vf_basic_event = VfBasicEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vf_basic_event_params
      params.require(:vf_basic_event).permit(:name)
    end
end
