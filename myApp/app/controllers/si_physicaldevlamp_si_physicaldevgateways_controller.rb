class SiPhysicaldevlampSiPhysicaldevgatewaysController < ApplicationController
  before_action :set_si_physicaldevlamp_si_physicaldevgateway, only: [:show, :edit, :update, :destroy]

  # GET /si_physicaldevlamp_si_physicaldevgateways
  # GET /si_physicaldevlamp_si_physicaldevgateways.json
  def index
    @si_physicaldevlamp_si_physicaldevgateways = SiPhysicaldevlampSiPhysicaldevgateway.all
  end

  # GET /si_physicaldevlamp_si_physicaldevgateways/1
  # GET /si_physicaldevlamp_si_physicaldevgateways/1.json
  def show
  end

  # GET /si_physicaldevlamp_si_physicaldevgateways/new
  def new
    @si_physicaldevlamp_si_physicaldevgateway = SiPhysicaldevlampSiPhysicaldevgateway.new
  end

  # GET /si_physicaldevlamp_si_physicaldevgateways/1/edit
  def edit
  end

  # POST /si_physicaldevlamp_si_physicaldevgateways
  # POST /si_physicaldevlamp_si_physicaldevgateways.json
  def create
    @si_physicaldevlamp_si_physicaldevgateway = SiPhysicaldevlampSiPhysicaldevgateway.new(si_physicaldevlamp_si_physicaldevgateway_params)

    respond_to do |format|
      if @si_physicaldevlamp_si_physicaldevgateway.save
        format.html { redirect_to @si_physicaldevlamp_si_physicaldevgateway, notice: 'Si physicaldevlamp si physicaldevgateway was successfully created.' }
        format.json { render :show, status: :created, location: @si_physicaldevlamp_si_physicaldevgateway }
      else
        format.html { render :new }
        format.json { render json: @si_physicaldevlamp_si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_physicaldevlamp_si_physicaldevgateways/1
  # PATCH/PUT /si_physicaldevlamp_si_physicaldevgateways/1.json
  def update
    respond_to do |format|
      if @si_physicaldevlamp_si_physicaldevgateway.update(si_physicaldevlamp_si_physicaldevgateway_params)
        format.html { redirect_to @si_physicaldevlamp_si_physicaldevgateway, notice: 'Si physicaldevlamp si physicaldevgateway was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_physicaldevlamp_si_physicaldevgateway }
      else
        format.html { render :edit }
        format.json { render json: @si_physicaldevlamp_si_physicaldevgateway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_physicaldevlamp_si_physicaldevgateways/1
  # DELETE /si_physicaldevlamp_si_physicaldevgateways/1.json
  def destroy
    @si_physicaldevlamp_si_physicaldevgateway.destroy
    respond_to do |format|
      format.html { redirect_to si_physicaldevlamp_si_physicaldevgateways_url, notice: 'Si physicaldevlamp si physicaldevgateway was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_physicaldevlamp_si_physicaldevgateway
      @si_physicaldevlamp_si_physicaldevgateway = SiPhysicaldevlampSiPhysicaldevgateway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_physicaldevlamp_si_physicaldevgateway_params
      params.require(:si_physicaldevlamp_si_physicaldevgateway).permit(:si_physicaldevlamp_id, :si_physicaldevgateway_id, :distance_lamp_gateway, :distance_level)
    end
end
