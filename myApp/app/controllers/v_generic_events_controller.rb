class VGenericEventsController < ApplicationController
  before_action :set_v_generic_event, only: [:show, :edit, :update, :destroy]

  # GET /v_generic_events
  # GET /v_generic_events.json
  def index
    @v_generic_events = VGenericEvent.all
  end

  # GET /v_generic_events/1
  # GET /v_generic_events/1.json
  def show
  end

  # GET /v_generic_events/new
  def new
    @v_generic_event = VGenericEvent.new
  end

  # GET /v_generic_events/1/edit
  def edit
  end

  # POST /v_generic_events
  # POST /v_generic_events.json
  def create
    @v_generic_event = VGenericEvent.new(v_generic_event_params)

    respond_to do |format|
      if @v_generic_event.save
        format.html { redirect_to @v_generic_event, notice: 'V generic event was successfully created.' }
        format.json { render :show, status: :created, location: @v_generic_event }
      else
        format.html { render :new }
        format.json { render json: @v_generic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_generic_events/1
  # PATCH/PUT /v_generic_events/1.json
  def update
    respond_to do |format|
      if @v_generic_event.update(v_generic_event_params)
        format.html { redirect_to @v_generic_event, notice: 'V generic event was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_generic_event }
      else
        format.html { render :edit }
        format.json { render json: @v_generic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_generic_events/1
  # DELETE /v_generic_events/1.json
  def destroy
    @v_generic_event.destroy
    respond_to do |format|
      format.html { redirect_to v_generic_events_url, notice: 'V generic event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_generic_event
      @v_generic_event = VGenericEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_generic_event_params
      params.require(:v_generic_event).permit(:name)
    end
end
