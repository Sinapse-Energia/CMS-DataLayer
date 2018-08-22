class ArFlampactuatorCalendarsController < ApplicationController
  before_action :set_ar_flampactuator_calendar, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_calendars
  # GET /ar_flampactuator_calendars.json
  def index
    @ar_flampactuator_calendars = ArFlampactuatorCalendar.all
  end

  # GET /ar_flampactuator_calendars/1
  # GET /ar_flampactuator_calendars/1.json
  def show
  end

  # GET /ar_flampactuator_calendars/new
  def new
    @ar_flampactuator_calendar = ArFlampactuatorCalendar.new
  end

  # GET /ar_flampactuator_calendars/1/edit
  def edit
  end

  # POST /ar_flampactuator_calendars
  # POST /ar_flampactuator_calendars.json
  def create
    @ar_flampactuator_calendar = ArFlampactuatorCalendar.new(ar_flampactuator_calendar_params)

    respond_to do |format|
      if @ar_flampactuator_calendar.save
        format.html { redirect_to @ar_flampactuator_calendar, notice: 'Ar flampactuator calendar was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_calendar }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_calendars/1
  # PATCH/PUT /ar_flampactuator_calendars/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_calendar.update(ar_flampactuator_calendar_params)
        format.html { redirect_to @ar_flampactuator_calendar, notice: 'Ar flampactuator calendar was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_calendar }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_calendars/1
  # DELETE /ar_flampactuator_calendars/1.json
  def destroy
    @ar_flampactuator_calendar.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_calendars_url, notice: 'Ar flampactuator calendar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_calendar
      @ar_flampactuator_calendar = ArFlampactuatorCalendar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_calendar_params
      params.require(:ar_flampactuator_calendar).permit(:f_lampactuator_id, :ec_calendar_id, :is_group, :is_single, :eg_group_id)
    end
end
