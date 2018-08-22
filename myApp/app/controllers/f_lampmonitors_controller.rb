class FLampmonitorsController < ApplicationController
  before_action :set_f_lampmonitor, only: [:show, :edit, :update, :destroy]

  # GET /f_lampmonitors
  # GET /f_lampmonitors.json
  def index
    @f_lampmonitors = FLampmonitor.all
  end

  # GET /f_lampmonitors/1
  # GET /f_lampmonitors/1.json
  def show
  end

  # GET /f_lampmonitors/new
  def new
    @f_lampmonitor = FLampmonitor.new
  end

  # GET /f_lampmonitors/1/edit
  def edit
  end

  # POST /f_lampmonitors
  # POST /f_lampmonitors.json
  def create
    @f_lampmonitor = FLampmonitor.new(f_lampmonitor_params)

    respond_to do |format|
      if @f_lampmonitor.save
        format.html { redirect_to @f_lampmonitor, notice: 'F lampmonitor was successfully created.' }
        format.json { render :show, status: :created, location: @f_lampmonitor }
      else
        format.html { render :new }
        format.json { render json: @f_lampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_lampmonitors/1
  # PATCH/PUT /f_lampmonitors/1.json
  def update
    respond_to do |format|
      if @f_lampmonitor.update(f_lampmonitor_params)
        format.html { redirect_to @f_lampmonitor, notice: 'F lampmonitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_lampmonitor }
      else
        format.html { render :edit }
        format.json { render json: @f_lampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_lampmonitors/1
  # DELETE /f_lampmonitors/1.json
  def destroy
    @f_lampmonitor.destroy
    respond_to do |format|
      format.html { redirect_to f_lampmonitors_url, notice: 'F lampmonitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_lampmonitor
      @f_lampmonitor = FLampmonitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_lampmonitor_params
      params.require(:f_lampmonitor).permit(:ed_logicaldev_id)
    end
end
