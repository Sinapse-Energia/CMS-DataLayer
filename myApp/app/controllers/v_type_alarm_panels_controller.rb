class VTypeAlarmPanelsController < ApplicationController
  before_action :set_v_type_alarm_panel, only: [:show, :edit, :update, :destroy]

  # GET /v_type_alarm_panels
  # GET /v_type_alarm_panels.json
  def index
    @v_type_alarm_panels = VTypeAlarmPanel.all
  end

  # GET /v_type_alarm_panels/1
  # GET /v_type_alarm_panels/1.json
  def show
  end

  # GET /v_type_alarm_panels/new
  def new
    @v_type_alarm_panel = VTypeAlarmPanel.new
  end

  # GET /v_type_alarm_panels/1/edit
  def edit
  end

  # POST /v_type_alarm_panels
  # POST /v_type_alarm_panels.json
  def create
    @v_type_alarm_panel = VTypeAlarmPanel.new(v_type_alarm_panel_params)

    respond_to do |format|
      if @v_type_alarm_panel.save
        format.html { redirect_to @v_type_alarm_panel, notice: 'V type alarm panel was successfully created.' }
        format.json { render :show, status: :created, location: @v_type_alarm_panel }
      else
        format.html { render :new }
        format.json { render json: @v_type_alarm_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_type_alarm_panels/1
  # PATCH/PUT /v_type_alarm_panels/1.json
  def update
    respond_to do |format|
      if @v_type_alarm_panel.update(v_type_alarm_panel_params)
        format.html { redirect_to @v_type_alarm_panel, notice: 'V type alarm panel was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_type_alarm_panel }
      else
        format.html { render :edit }
        format.json { render json: @v_type_alarm_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_type_alarm_panels/1
  # DELETE /v_type_alarm_panels/1.json
  def destroy
    @v_type_alarm_panel.destroy
    respond_to do |format|
      format.html { redirect_to v_type_alarm_panels_url, notice: 'V type alarm panel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_type_alarm_panel
      @v_type_alarm_panel = VTypeAlarmPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_type_alarm_panel_params
      params.require(:v_type_alarm_panel).permit(:name, :magnitude)
    end
end
