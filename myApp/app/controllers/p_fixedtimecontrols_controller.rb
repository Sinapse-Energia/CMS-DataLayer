class PFixedtimecontrolsController < ApplicationController
  before_action :set_p_fixedtimecontrol, only: [:show, :edit, :update, :destroy]

  # GET /p_fixedtimecontrols
  # GET /p_fixedtimecontrols.json
  def index
    @p_fixedtimecontrols = PFixedtimecontrol.all
  end

  # GET /p_fixedtimecontrols/1
  # GET /p_fixedtimecontrols/1.json
  def show
  end

  # GET /p_fixedtimecontrols/new
  def new
    @p_fixedtimecontrol = PFixedtimecontrol.new
  end

  # GET /p_fixedtimecontrols/1/edit
  def edit
  end

  # POST /p_fixedtimecontrols
  # POST /p_fixedtimecontrols.json
  def create
    @p_fixedtimecontrol = PFixedtimecontrol.new(p_fixedtimecontrol_params)

    respond_to do |format|
      if @p_fixedtimecontrol.save
        format.html { redirect_to @p_fixedtimecontrol, notice: 'P fixedtimecontrol was successfully created.' }
        format.json { render :show, status: :created, location: @p_fixedtimecontrol }
      else
        format.html { render :new }
        format.json { render json: @p_fixedtimecontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_fixedtimecontrols/1
  # PATCH/PUT /p_fixedtimecontrols/1.json
  def update
    respond_to do |format|
      if @p_fixedtimecontrol.update(p_fixedtimecontrol_params)
        format.html { redirect_to @p_fixedtimecontrol, notice: 'P fixedtimecontrol was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_fixedtimecontrol }
      else
        format.html { render :edit }
        format.json { render json: @p_fixedtimecontrol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_fixedtimecontrols/1
  # DELETE /p_fixedtimecontrols/1.json
  def destroy
    @p_fixedtimecontrol.destroy
    respond_to do |format|
      format.html { redirect_to p_fixedtimecontrols_url, notice: 'P fixedtimecontrol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_fixedtimecontrol
      @p_fixedtimecontrol = PFixedtimecontrol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_fixedtimecontrol_params
      params.require(:p_fixedtimecontrol).permit(:start_time, :l_lightcommand_id, :ep_controlprogram_id, :off_set, :v_astroclock_id, :v_typeexecution_id)
    end
end
