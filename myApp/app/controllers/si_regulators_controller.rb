class SiRegulatorsController < ApplicationController
  before_action :set_si_regulator, only: [:show, :edit, :update, :destroy]

  # GET /si_regulators
  # GET /si_regulators.json
  def index
    @si_regulators = SiRegulator.all
  end

  # GET /si_regulators/1
  # GET /si_regulators/1.json
  def show
  end

  # GET /si_regulators/new
  def new
    @si_regulator = SiRegulator.new
  end

  # GET /si_regulators/1/edit
  def edit
  end

  # POST /si_regulators
  # POST /si_regulators.json
  def create
    @si_regulator = SiRegulator.new(si_regulator_params)

    respond_to do |format|
      if @si_regulator.save
        format.html { redirect_to @si_regulator, notice: 'Si regulator was successfully created.' }
        format.json { render :show, status: :created, location: @si_regulator }
      else
        format.html { render :new }
        format.json { render json: @si_regulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_regulators/1
  # PATCH/PUT /si_regulators/1.json
  def update
    respond_to do |format|
      if @si_regulator.update(si_regulator_params)
        format.html { redirect_to @si_regulator, notice: 'Si regulator was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_regulator }
      else
        format.html { render :edit }
        format.json { render json: @si_regulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_regulators/1
  # DELETE /si_regulators/1.json
  def destroy
    @si_regulator.destroy
    respond_to do |format|
      format.html { redirect_to si_regulators_url, notice: 'Si regulator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_regulator
      @si_regulator = SiRegulator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_regulator_params
      params.require(:si_regulator).permit(:id_regulator, :brand_regulator, :power_regulator, :v_typeregulator_id, :v_stateregulator_id, :energy_loss)
    end
end
