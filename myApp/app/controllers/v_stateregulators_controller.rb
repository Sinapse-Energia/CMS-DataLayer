class VStateregulatorsController < ApplicationController
  before_action :set_v_stateregulator, only: [:show, :edit, :update, :destroy]

  # GET /v_stateregulators
  # GET /v_stateregulators.json
  def index
    @v_stateregulators = VStateregulator.all
  end

  # GET /v_stateregulators/1
  # GET /v_stateregulators/1.json
  def show
  end

  # GET /v_stateregulators/new
  def new
    @v_stateregulator = VStateregulator.new
  end

  # GET /v_stateregulators/1/edit
  def edit
  end

  # POST /v_stateregulators
  # POST /v_stateregulators.json
  def create
    @v_stateregulator = VStateregulator.new(v_stateregulator_params)

    respond_to do |format|
      if @v_stateregulator.save
        format.html { redirect_to @v_stateregulator, notice: 'V stateregulator was successfully created.' }
        format.json { render :show, status: :created, location: @v_stateregulator }
      else
        format.html { render :new }
        format.json { render json: @v_stateregulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_stateregulators/1
  # PATCH/PUT /v_stateregulators/1.json
  def update
    respond_to do |format|
      if @v_stateregulator.update(v_stateregulator_params)
        format.html { redirect_to @v_stateregulator, notice: 'V stateregulator was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_stateregulator }
      else
        format.html { render :edit }
        format.json { render json: @v_stateregulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_stateregulators/1
  # DELETE /v_stateregulators/1.json
  def destroy
    @v_stateregulator.destroy
    respond_to do |format|
      format.html { redirect_to v_stateregulators_url, notice: 'V stateregulator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_stateregulator
      @v_stateregulator = VStateregulator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_stateregulator_params
      params.require(:v_stateregulator).permit(:name)
    end
end
