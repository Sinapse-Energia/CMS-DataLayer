class EgGroupsSiPhysicaldevcircuitsController < ApplicationController
  before_action :set_eg_groups_si_physicaldevcircuit, only: [:show, :edit, :update, :destroy]

  # GET /eg_groups_si_physicaldevcircuits
  # GET /eg_groups_si_physicaldevcircuits.json
  def index
    @eg_groups_si_physicaldevcircuits = EgGroupsSiPhysicaldevcircuit.all
  end

  # GET /eg_groups_si_physicaldevcircuits/1
  # GET /eg_groups_si_physicaldevcircuits/1.json
  def show
  end

  # GET /eg_groups_si_physicaldevcircuits/new
  def new
    @eg_groups_si_physicaldevcircuit = EgGroupsSiPhysicaldevcircuit.new
  end

  # GET /eg_groups_si_physicaldevcircuits/1/edit
  def edit
  end

  # POST /eg_groups_si_physicaldevcircuits
  # POST /eg_groups_si_physicaldevcircuits.json
  def create
    @eg_groups_si_physicaldevcircuit = EgGroupsSiPhysicaldevcircuit.new(eg_groups_si_physicaldevcircuit_params)

    respond_to do |format|
      if @eg_groups_si_physicaldevcircuit.save
        format.html { redirect_to @eg_groups_si_physicaldevcircuit, notice: 'Eg groups si physicaldevcircuit was successfully created.' }
        format.json { render :show, status: :created, location: @eg_groups_si_physicaldevcircuit }
      else
        format.html { render :new }
        format.json { render json: @eg_groups_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eg_groups_si_physicaldevcircuits/1
  # PATCH/PUT /eg_groups_si_physicaldevcircuits/1.json
  def update
    respond_to do |format|
      if @eg_groups_si_physicaldevcircuit.update(eg_groups_si_physicaldevcircuit_params)
        format.html { redirect_to @eg_groups_si_physicaldevcircuit, notice: 'Eg groups si physicaldevcircuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @eg_groups_si_physicaldevcircuit }
      else
        format.html { render :edit }
        format.json { render json: @eg_groups_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eg_groups_si_physicaldevcircuits/1
  # DELETE /eg_groups_si_physicaldevcircuits/1.json
  def destroy
    @eg_groups_si_physicaldevcircuit.destroy
    respond_to do |format|
      format.html { redirect_to eg_groups_si_physicaldevcircuits_url, notice: 'Eg groups si physicaldevcircuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eg_groups_si_physicaldevcircuit
      @eg_groups_si_physicaldevcircuit = EgGroupsSiPhysicaldevcircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eg_groups_si_physicaldevcircuit_params
      params.require(:eg_groups_si_physicaldevcircuit).permit(:eg_group_id, :si_physicaldevcircuit_id)
    end
end
