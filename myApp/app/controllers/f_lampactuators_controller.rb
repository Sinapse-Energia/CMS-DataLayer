class FLampactuatorsController < ApplicationController
  before_action :set_f_lampactuator, only: [:show, :edit, :update, :destroy]

  # GET /f_lampactuators
  # GET /f_lampactuators.json
  def index
    @f_lampactuators = FLampactuator.all
  end

  # GET /f_lampactuators/1
  # GET /f_lampactuators/1.json
  def show
  end

  # GET /f_lampactuators/new
  def new
    @f_lampactuator = FLampactuator.new
  end

  # GET /f_lampactuators/1/edit
  def edit
  end

  # POST /f_lampactuators
  # POST /f_lampactuators.json
  def create
    @f_lampactuator = FLampactuator.new(f_lampactuator_params)

    respond_to do |format|
      if @f_lampactuator.save
        format.html { redirect_to @f_lampactuator, notice: 'F lampactuator was successfully created.' }
        format.json { render :show, status: :created, location: @f_lampactuator }
      else
        format.html { render :new }
        format.json { render json: @f_lampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_lampactuators/1
  # PATCH/PUT /f_lampactuators/1.json
  def update
    respond_to do |format|
      if @f_lampactuator.update(f_lampactuator_params)
        format.html { redirect_to @f_lampactuator, notice: 'F lampactuator was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_lampactuator }
      else
        format.html { render :edit }
        format.json { render json: @f_lampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_lampactuators/1
  # DELETE /f_lampactuators/1.json
  def destroy
    @f_lampactuator.destroy
    respond_to do |format|
      format.html { redirect_to f_lampactuators_url, notice: 'F lampactuator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_lampactuator
      @f_lampactuator = FLampactuator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_lampactuator_params
      params.require(:f_lampactuator).permit(:ed_logicaldev_id)
    end
end
