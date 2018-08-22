class EdLogicaldevSiPhysicaldevpanelsController < ApplicationController
  before_action :set_ed_logicaldev_si_physicaldevpanel, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_si_physicaldevpanels
  # GET /ed_logicaldev_si_physicaldevpanels.json
  def index
    @ed_logicaldev_si_physicaldevpanels = EdLogicaldevSiPhysicaldevpanel.all
  end

  # GET /ed_logicaldev_si_physicaldevpanels/1
  # GET /ed_logicaldev_si_physicaldevpanels/1.json
  def show
  end

  # GET /ed_logicaldev_si_physicaldevpanels/new
  def new
    @ed_logicaldev_si_physicaldevpanel = EdLogicaldevSiPhysicaldevpanel.new
  end

  # GET /ed_logicaldev_si_physicaldevpanels/1/edit
  def edit
  end

  # POST /ed_logicaldev_si_physicaldevpanels
  # POST /ed_logicaldev_si_physicaldevpanels.json
  def create
    @ed_logicaldev_si_physicaldevpanel = EdLogicaldevSiPhysicaldevpanel.new(ed_logicaldev_si_physicaldevpanel_params)

    respond_to do |format|
      if @ed_logicaldev_si_physicaldevpanel.save
        format.html { redirect_to @ed_logicaldev_si_physicaldevpanel, notice: 'Ed logicaldev si physicaldevpanel was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_si_physicaldevpanel }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_si_physicaldevpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_si_physicaldevpanels/1
  # PATCH/PUT /ed_logicaldev_si_physicaldevpanels/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_si_physicaldevpanel.update(ed_logicaldev_si_physicaldevpanel_params)
        format.html { redirect_to @ed_logicaldev_si_physicaldevpanel, notice: 'Ed logicaldev si physicaldevpanel was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_si_physicaldevpanel }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_si_physicaldevpanel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_si_physicaldevpanels/1
  # DELETE /ed_logicaldev_si_physicaldevpanels/1.json
  def destroy
    @ed_logicaldev_si_physicaldevpanel.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_si_physicaldevpanels_url, notice: 'Ed logicaldev si physicaldevpanel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_si_physicaldevpanel
      @ed_logicaldev_si_physicaldevpanel = EdLogicaldevSiPhysicaldevpanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_si_physicaldevpanel_params
      params.require(:ed_logicaldev_si_physicaldevpanel).permit(:ed_logicaldev_id, :si_physicaldevpanel_id)
    end
end
