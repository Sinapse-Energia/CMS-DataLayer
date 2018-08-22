class VTyperegulatorsController < ApplicationController
  before_action :set_v_typeregulator, only: [:show, :edit, :update, :destroy]

  # GET /v_typeregulators
  # GET /v_typeregulators.json
  def index
    @v_typeregulators = VTyperegulator.all
  end

  # GET /v_typeregulators/1
  # GET /v_typeregulators/1.json
  def show
  end

  # GET /v_typeregulators/new
  def new
    @v_typeregulator = VTyperegulator.new
  end

  # GET /v_typeregulators/1/edit
  def edit
  end

  # POST /v_typeregulators
  # POST /v_typeregulators.json
  def create
    @v_typeregulator = VTyperegulator.new(v_typeregulator_params)

    respond_to do |format|
      if @v_typeregulator.save
        format.html { redirect_to @v_typeregulator, notice: 'V typeregulator was successfully created.' }
        format.json { render :show, status: :created, location: @v_typeregulator }
      else
        format.html { render :new }
        format.json { render json: @v_typeregulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typeregulators/1
  # PATCH/PUT /v_typeregulators/1.json
  def update
    respond_to do |format|
      if @v_typeregulator.update(v_typeregulator_params)
        format.html { redirect_to @v_typeregulator, notice: 'V typeregulator was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typeregulator }
      else
        format.html { render :edit }
        format.json { render json: @v_typeregulator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typeregulators/1
  # DELETE /v_typeregulators/1.json
  def destroy
    @v_typeregulator.destroy
    respond_to do |format|
      format.html { redirect_to v_typeregulators_url, notice: 'V typeregulator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typeregulator
      @v_typeregulator = VTyperegulator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typeregulator_params
      params.require(:v_typeregulator).permit(:name, :short_name)
    end
end
