class EgGroupsPanelEdLogicaldevsController < ApplicationController
  before_action :set_eg_groups_panel_ed_logicaldev, only: [:show, :edit, :update, :destroy]

  # GET /eg_groups_panel_ed_logicaldevs
  # GET /eg_groups_panel_ed_logicaldevs.json
  def index
    @eg_groups_panel_ed_logicaldevs = EgGroupsPanelEdLogicaldev.all
  end

  # GET /eg_groups_panel_ed_logicaldevs/1
  # GET /eg_groups_panel_ed_logicaldevs/1.json
  def show
  end

  # GET /eg_groups_panel_ed_logicaldevs/new
  def new
    @eg_groups_panel_ed_logicaldev = EgGroupsPanelEdLogicaldev.new
  end

  # GET /eg_groups_panel_ed_logicaldevs/1/edit
  def edit
  end

  # POST /eg_groups_panel_ed_logicaldevs
  # POST /eg_groups_panel_ed_logicaldevs.json
  def create
    @eg_groups_panel_ed_logicaldev = EgGroupsPanelEdLogicaldev.new(eg_groups_panel_ed_logicaldev_params)

    respond_to do |format|
      if @eg_groups_panel_ed_logicaldev.save
        format.html { redirect_to @eg_groups_panel_ed_logicaldev, notice: 'Eg groups panel ed logicaldev was successfully created.' }
        format.json { render :show, status: :created, location: @eg_groups_panel_ed_logicaldev }
      else
        format.html { render :new }
        format.json { render json: @eg_groups_panel_ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eg_groups_panel_ed_logicaldevs/1
  # PATCH/PUT /eg_groups_panel_ed_logicaldevs/1.json
  def update
    respond_to do |format|
      if @eg_groups_panel_ed_logicaldev.update(eg_groups_panel_ed_logicaldev_params)
        format.html { redirect_to @eg_groups_panel_ed_logicaldev, notice: 'Eg groups panel ed logicaldev was successfully updated.' }
        format.json { render :show, status: :ok, location: @eg_groups_panel_ed_logicaldev }
      else
        format.html { render :edit }
        format.json { render json: @eg_groups_panel_ed_logicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eg_groups_panel_ed_logicaldevs/1
  # DELETE /eg_groups_panel_ed_logicaldevs/1.json
  def destroy
    @eg_groups_panel_ed_logicaldev.destroy
    respond_to do |format|
      format.html { redirect_to eg_groups_panel_ed_logicaldevs_url, notice: 'Eg groups panel ed logicaldev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eg_groups_panel_ed_logicaldev
      @eg_groups_panel_ed_logicaldev = EgGroupsPanelEdLogicaldev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eg_groups_panel_ed_logicaldev_params
      params.require(:eg_groups_panel_ed_logicaldev).permit(:eg_group_id, :ed_logicaldev_id)
    end
end
