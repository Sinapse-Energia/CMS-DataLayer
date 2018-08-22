class EdLogicaldevSiPhysicaldevcircuitsController < ApplicationController
  before_action :set_ed_logicaldev_si_physicaldevcircuit, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_si_physicaldevcircuits
  # GET /ed_logicaldev_si_physicaldevcircuits.json
  def index
    @ed_logicaldev_si_physicaldevcircuits = EdLogicaldevSiPhysicaldevcircuit.all
  end

  # GET /ed_logicaldev_si_physicaldevcircuits/1
  # GET /ed_logicaldev_si_physicaldevcircuits/1.json
  def show
  end

  # GET /ed_logicaldev_si_physicaldevcircuits/new
  def new
    @ed_logicaldev_si_physicaldevcircuit = EdLogicaldevSiPhysicaldevcircuit.new
  end

  # GET /ed_logicaldev_si_physicaldevcircuits/1/edit
  def edit
  end

  # POST /ed_logicaldev_si_physicaldevcircuits
  # POST /ed_logicaldev_si_physicaldevcircuits.json
  def create
    @ed_logicaldev_si_physicaldevcircuit = EdLogicaldevSiPhysicaldevcircuit.new(ed_logicaldev_si_physicaldevcircuit_params)

    respond_to do |format|
      if @ed_logicaldev_si_physicaldevcircuit.save
        format.html { redirect_to @ed_logicaldev_si_physicaldevcircuit, notice: 'Ed logicaldev si physicaldevcircuit was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_si_physicaldevcircuit }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_si_physicaldevcircuits/1
  # PATCH/PUT /ed_logicaldev_si_physicaldevcircuits/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_si_physicaldevcircuit.update(ed_logicaldev_si_physicaldevcircuit_params)
        format.html { redirect_to @ed_logicaldev_si_physicaldevcircuit, notice: 'Ed logicaldev si physicaldevcircuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_si_physicaldevcircuit }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_si_physicaldevcircuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_si_physicaldevcircuits/1
  # DELETE /ed_logicaldev_si_physicaldevcircuits/1.json
  def destroy
    @ed_logicaldev_si_physicaldevcircuit.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_si_physicaldevcircuits_url, notice: 'Ed logicaldev si physicaldevcircuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_si_physicaldevcircuit
      @ed_logicaldev_si_physicaldevcircuit = EdLogicaldevSiPhysicaldevcircuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_si_physicaldevcircuit_params
      params.require(:ed_logicaldev_si_physicaldevcircuit).permit(:ed_logicaldev_id, :si_physicaldevcircuit_id)
    end
end
