class EdLogicaldevSiPhysicaldevgatewaysController < ApplicationController
  before_action :set_ed_logicaldev_si_physicaldevgateway, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_si_physicaldevgateways
  # GET /ed_logicaldev_si_physicaldevgateways.json
  def index
    @ed_logicaldev_si_physicaldevgateways = EdLogicaldevSiPhysicaldevgateway.all
  end

  # GET /ed_logicaldev_si_physicaldevgateways/1
  # GET /ed_logicaldev_si_physicaldevgateways/1.json
  def show
  end

  # GET /ed_logicaldev_si_physicaldevgateways/new
  def new
    @ed_logicaldev_si_physicaldevgateway = EdLogicaldevSiPhysicaldevgateway.new
  end

  # GET /ed_logicaldev_si_physicaldevgateways/1/edit
  def edit
  end

  # POST /ed_logicaldev_si_physicaldevgateways
  # POST /ed_logicaldev_si_physicaldevgateways.json
  def create
    @ed_logicaldev_si_physicaldevgateway = EdLogicaldevSiPhysicaldevgateway.new(ed_logicaldev_si_physicaldevgateway_params)

    respond_to do |format|
      if @ed_logicaldev_si_physicaldevgateway.save
        format.html { redirect_to @ed_logicaldev_si_physicaldevgateway, notice: 'Ed logicaldev si physicaldevgateway was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_si_physicaldevgateway }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_si_physicaldevgateways/1
  # PATCH/PUT /ed_logicaldev_si_physicaldevgateways/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_si_physicaldevgateway.update(ed_logicaldev_si_physicaldevgateway_params)
        format.html { redirect_to @ed_logicaldev_si_physicaldevgateway, notice: 'Ed logicaldev si physicaldevgateway was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_si_physicaldevgateway }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_si_physicaldevgateways/1
  # DELETE /ed_logicaldev_si_physicaldevgateways/1.json
  def destroy
    @ed_logicaldev_si_physicaldevgateway.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_si_physicaldevgateways_url, notice: 'Ed logicaldev si physicaldevgateway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_si_physicaldevgateway
      @ed_logicaldev_si_physicaldevgateway = EdLogicaldevSiPhysicaldevgateway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_si_physicaldevgateway_params
      params.require(:ed_logicaldev_si_physicaldevgateway).permit(:ed_logicaldev_id, :si_physicaldevgateway_id)
    end
end
