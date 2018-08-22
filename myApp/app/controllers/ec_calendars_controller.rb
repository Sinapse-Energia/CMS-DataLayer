class EcCalendarsController < ApplicationController
  before_action :set_ec_calendar, only: [:show, :edit, :update, :destroy]

  # GET /ec_calendars
  # GET /ec_calendars.json
  def index
    @ec_calendars = EcCalendar.all
  end

  # GET /ec_calendars/1
  # GET /ec_calendars/1.json
  def show
  end

  # GET /ec_calendars/new
  def new
    @ec_calendar = EcCalendar.new
  end

  # GET /ec_calendars/1/edit
  def edit
  end

  # POST /ec_calendars
  # POST /ec_calendars.json
  def create
    @ec_calendar = EcCalendar.new(ec_calendar_params)

    respond_to do |format|
      if @ec_calendar.save
        format.html { redirect_to @ec_calendar, notice: 'Ec calendar was successfully created.' }
        format.json { render :show, status: :created, location: @ec_calendar }
      else
        format.html { render :new }
        format.json { render json: @ec_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ec_calendars/1
  # PATCH/PUT /ec_calendars/1.json
  def update
    respond_to do |format|
      if @ec_calendar.update(ec_calendar_params)
        format.html { redirect_to @ec_calendar, notice: 'Ec calendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @ec_calendar }
      else
        format.html { render :edit }
        format.json { render json: @ec_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ec_calendars/1
  # DELETE /ec_calendars/1.json
  def destroy
    @ec_calendar.destroy
    respond_to do |format|
      format.html { redirect_to ec_calendars_url, notice: 'Ec calendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ec_calendar
      @ec_calendar = EcCalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ec_calendar_params
      params.require(:ec_calendar).permit(:address, :ep_controlprogram_id, :seqbridge, :seqcms, :actived)
    end
end
