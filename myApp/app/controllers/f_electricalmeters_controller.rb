class FElectricalmetersController < ApplicationController
  before_action :set_f_electricalmeter, only: [:show, :edit, :update, :destroy]

  # GET /f_electricalmeters
  # GET /f_electricalmeters.json
  def index
    @f_electricalmeters = FElectricalmeter.all
  end

  # GET /f_electricalmeters/1
  # GET /f_electricalmeters/1.json
  def show
  end

  # GET /f_electricalmeters/new
  def new
    @f_electricalmeter = FElectricalmeter.new
  end

  # GET /f_electricalmeters/1/edit
  def edit
  end

  # POST /f_electricalmeters
  # POST /f_electricalmeters.json
  def create
    @f_electricalmeter = FElectricalmeter.new(f_electricalmeter_params)

    respond_to do |format|
      if @f_electricalmeter.save
        format.html { redirect_to @f_electricalmeter, notice: 'F electricalmeter was successfully created.' }
        format.json { render :show, status: :created, location: @f_electricalmeter }
      else
        format.html { render :new }
        format.json { render json: @f_electricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_electricalmeters/1
  # PATCH/PUT /f_electricalmeters/1.json
  def update
    respond_to do |format|
      if @f_electricalmeter.update(f_electricalmeter_params)
        format.html { redirect_to @f_electricalmeter, notice: 'F electricalmeter was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_electricalmeter }
      else
        format.html { render :edit }
        format.json { render json: @f_electricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_electricalmeters/1
  # DELETE /f_electricalmeters/1.json
  def destroy
    @f_electricalmeter.destroy
    respond_to do |format|
      format.html { redirect_to f_electricalmeters_url, notice: 'F electricalmeter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_electricalmeter
      @f_electricalmeter = FElectricalmeter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_electricalmeter_params
      params.require(:f_electricalmeter).permit(:ed_logicaldev_id)
    end
end
