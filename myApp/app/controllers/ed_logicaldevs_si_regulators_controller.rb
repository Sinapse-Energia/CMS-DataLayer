class EdLogicaldevsSiRegulatorsController < ApplicationController
  before_action :set_ed_logicaldevs_si_regulator, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldevs_si_regulators
  # GET /ed_logicaldevs_si_regulators.json
  def index
    @ed_logicaldevs_si_regulators = EdLogicaldevsSiRegulator.all
  end

  # GET /ed_logicaldevs_si_regulators/1
  # GET /ed_logicaldevs_si_regulators/1.json
  def show
  end

  # GET /ed_logicaldevs_si_regulators/new
  def new
    @ed_logicaldevs_si_regulator = EdLogicaldevsSiRegulator.new
  end

  # GET /ed_logicaldevs_si_regulators/1/edit
  def edit
  end

  # POST /ed_logicaldevs_si_regulators
  # POST /ed_logicaldevs_si_regulators.json
  def create
    @ed_logicaldevs_si_regulator = EdLogicaldevsSiRegulator.new(ed_logicaldevs_si_regulator_params)

    respond_to do |format|
      if @ed_logicaldevs_si_regulator.save
        format.html { redirect_to @ed_logicaldevs_si_regulator, notice: 'Ed logicaldevs si regulator was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldevs_si_regulator }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldevs_si_regulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldevs_si_regulators/1
  # PATCH/PUT /ed_logicaldevs_si_regulators/1.json
  def update
    respond_to do |format|
      if @ed_logicaldevs_si_regulator.update(ed_logicaldevs_si_regulator_params)
        format.html { redirect_to @ed_logicaldevs_si_regulator, notice: 'Ed logicaldevs si regulator was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldevs_si_regulator }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldevs_si_regulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldevs_si_regulators/1
  # DELETE /ed_logicaldevs_si_regulators/1.json
  def destroy
    @ed_logicaldevs_si_regulator.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldevs_si_regulators_url, notice: 'Ed logicaldevs si regulator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldevs_si_regulator
      @ed_logicaldevs_si_regulator = EdLogicaldevsSiRegulator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldevs_si_regulator_params
      params.require(:ed_logicaldevs_si_regulator).permit(:ed_logicaldev_id, :si_regulator_id)
    end
end
