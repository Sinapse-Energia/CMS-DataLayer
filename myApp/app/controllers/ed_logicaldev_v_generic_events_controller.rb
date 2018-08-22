class EdLogicaldevVGenericEventsController < ApplicationController
  before_action :set_ed_logicaldev_v_generic_event, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_v_generic_events
  # GET /ed_logicaldev_v_generic_events.json
  def index
    @ed_logicaldev_v_generic_events = EdLogicaldevVGenericEvent.all
  end

  # GET /ed_logicaldev_v_generic_events/1
  # GET /ed_logicaldev_v_generic_events/1.json
  def show
  end

  # GET /ed_logicaldev_v_generic_events/new
  def new
    @ed_logicaldev_v_generic_event = EdLogicaldevVGenericEvent.new
  end

  # GET /ed_logicaldev_v_generic_events/1/edit
  def edit
  end

  # POST /ed_logicaldev_v_generic_events
  # POST /ed_logicaldev_v_generic_events.json
  def create
    @ed_logicaldev_v_generic_event = EdLogicaldevVGenericEvent.new(ed_logicaldev_v_generic_event_params)

    respond_to do |format|
      if @ed_logicaldev_v_generic_event.save
        format.html { redirect_to @ed_logicaldev_v_generic_event, notice: 'Ed logicaldev v generic event was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_v_generic_event }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_v_generic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_v_generic_events/1
  # PATCH/PUT /ed_logicaldev_v_generic_events/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_v_generic_event.update(ed_logicaldev_v_generic_event_params)
        format.html { redirect_to @ed_logicaldev_v_generic_event, notice: 'Ed logicaldev v generic event was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_v_generic_event }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_v_generic_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_v_generic_events/1
  # DELETE /ed_logicaldev_v_generic_events/1.json
  def destroy
    @ed_logicaldev_v_generic_event.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_v_generic_events_url, notice: 'Ed logicaldev v generic event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_v_generic_event
      @ed_logicaldev_v_generic_event = EdLogicaldevVGenericEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_v_generic_event_params
      params.require(:ed_logicaldev_v_generic_event).permit(:ed_logicaldev_id, :v_generic_event_id)
    end
end
