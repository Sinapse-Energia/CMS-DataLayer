class SiPhysicaldevgatewaysController < ApplicationController
  before_action :set_si_physicaldevgateway, only: [:show, :edit, :update, :destroy]

  # GET /si_physicaldevgateways
  # GET /si_physicaldevgateways.json
  def index
    @si_physicaldevgateways = SiPhysicaldevgateway.all
  end

  # GET /si_physicaldevgateways/1
  # GET /si_physicaldevgateways/1.json
  def show
  end

  # GET /si_physicaldevgateways/new
  def new
    @si_physicaldevgateway = SiPhysicaldevgateway.new
  end

  # GET /si_physicaldevgateways/1/edit
  def edit
  end

  # POST /si_physicaldevgateways
  # POST /si_physicaldevgateways.json
  def create
    @si_physicaldevgateway = SiPhysicaldevgateway.new(si_physicaldevgateway_params)

    respond_to do |format|
      if @si_physicaldevgateway.save
        format.html { redirect_to @si_physicaldevgateway, notice: 'Si physicaldevgateway was successfully created.' }
        format.json { render :show, status: :created, location: @si_physicaldevgateway }
      else
        format.html { render :new }
        format.json { render json: @si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_physicaldevgateways/1
  # PATCH/PUT /si_physicaldevgateways/1.json
  def update
    respond_to do |format|
      if @si_physicaldevgateway.update(si_physicaldevgateway_params)
        format.html { redirect_to @si_physicaldevgateway, notice: 'Si physicaldevgateway was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_physicaldevgateway }
      else
        format.html { render :edit }
        format.json { render json: @si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_physicaldevgateways/1
  # DELETE /si_physicaldevgateways/1.json
  def destroy
    @si_physicaldevgateway.destroy
    respond_to do |format|
      format.html { redirect_to si_physicaldevgateways_url, notice: 'Si physicaldevgateway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_physicaldevgateway
      @si_physicaldevgateway = SiPhysicaldevgateway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_physicaldevgateway_params
      params.require(:si_physicaldevgateway).permit(:name, :name_vial, :number_vial, :longitude, :latitude, :altitude, :date_installation)
    end
end
