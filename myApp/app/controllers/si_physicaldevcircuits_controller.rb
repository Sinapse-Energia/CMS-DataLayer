class SiPhysicaldevcircuitsController < ApplicationController
  before_action :set_si_physicaldevcircuit, only: [:show, :edit, :update, :destroy]

  # GET /si_physicaldevcircuits
  # GET /si_physicaldevcircuits.json
  def index
    @si_physicaldevcircuits = SiPhysicaldevcircuit.all
  end

  # GET /si_physicaldevcircuits/1
  # GET /si_physicaldevcircuits/1.json
  def show
  end

  # GET /si_physicaldevcircuits/new
  def new
    @si_physicaldevcircuit = SiPhysicaldevcircuit.new
  end

  # GET /si_physicaldevcircuits/1/edit
  def edit
  end

  # POST /si_physicaldevcircuits
  # POST /si_physicaldevcircuits.json
  def create
    @si_physicaldevcircuit = SiPhysicaldevcircuit.new(si_physicaldevcircuit_params)

    respond_to do |format|
      if @si_physicaldevcircuit.save
        format.html { redirect_to @si_physicaldevcircuit, notice: 'Si physicaldevcircuit was successfully created.' }
        format.json { render :show, status: :created, location: @si_physicaldevcircuit }
      else
        format.html { render :new }
        format.json { render json: @si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_physicaldevcircuits/1
  # PATCH/PUT /si_physicaldevcircuits/1.json
  def update
    respond_to do |format|
      if @si_physicaldevcircuit.update(si_physicaldevcircuit_params)
        format.html { redirect_to @si_physicaldevcircuit, notice: 'Si physicaldevcircuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_physicaldevcircuit }
      else
        format.html { render :edit }
        format.json { render json: @si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_physicaldevcircuits/1
  # DELETE /si_physicaldevcircuits/1.json
  def destroy
    @si_physicaldevcircuit.destroy
    respond_to do |format|
      format.html { redirect_to si_physicaldevcircuits_url, notice: 'Si physicaldevcircuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_physicaldevcircuit
      @si_physicaldevcircuit = SiPhysicaldevcircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_physicaldevcircuit_params
      params.require(:si_physicaldevcircuit).permit(:name, :type_circuit, :magnetotermic, :differencial, :conductor_type, :conductor_section, :canalization_type, :si_physicaldevpanel_id, :circuit_number, :telemanagement)
    end
end
