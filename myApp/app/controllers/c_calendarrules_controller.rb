class CCalendarrulesController < ApplicationController
  before_action :set_c_calendarrule, only: [:show, :edit, :update, :destroy]

  # GET /c_calendarrules
  # GET /c_calendarrules.json
  def index
    @c_calendarrules = CCalendarrule.all
  end

  # GET /c_calendarrules/1
  # GET /c_calendarrules/1.json
  def show
  end

  # GET /c_calendarrules/new
  def new
    @c_calendarrule = CCalendarrule.new
  end

  # GET /c_calendarrules/1/edit
  def edit
  end

  # POST /c_calendarrules
  # POST /c_calendarrules.json
  def create
    @c_calendarrule = CCalendarrule.new(c_calendarrule_params)

    respond_to do |format|
      if @c_calendarrule.save
        format.html { redirect_to @c_calendarrule, notice: 'C calendarrule was successfully created.' }
        format.json { render :show, status: :created, location: @c_calendarrule }
      else
        format.html { render :new }
        format.json { render json: @c_calendarrule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_calendarrules/1
  # PATCH/PUT /c_calendarrules/1.json
  def update
    respond_to do |format|
      if @c_calendarrule.update(c_calendarrule_params)
        format.html { redirect_to @c_calendarrule, notice: 'C calendarrule was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_calendarrule }
      else
        format.html { render :edit }
        format.json { render json: @c_calendarrule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_calendarrules/1
  # DELETE /c_calendarrules/1.json
  def destroy
    @c_calendarrule.destroy
    respond_to do |format|
      format.html { redirect_to c_calendarrules_url, notice: 'C calendarrule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_calendarrule
      @c_calendarrule = CCalendarrule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_calendarrule_params
      params.require(:c_calendarrule).permit(:start_date, :end_date, :ep_controlprogram_id, :ec_calendar_id, :always)
    end
end
