class LSensorsController < ApplicationController
  before_action :set_l_sensor, only: [:show, :edit, :update, :destroy]

  # GET /l_sensors
  # GET /l_sensors.json
  def index
    @l_sensors = LSensor.all
  end

  # GET /l_sensors/1
  # GET /l_sensors/1.json
  def show
  end

  # GET /l_sensors/new
  def new
    @l_sensor = LSensor.new
  end

  # GET /l_sensors/1/edit
  def edit
  end

  # POST /l_sensors
  # POST /l_sensors.json
  def create
    @l_sensor = LSensor.new(l_sensor_params)

    respond_to do |format|
      if @l_sensor.save
        format.html { redirect_to @l_sensor, notice: 'L sensor was successfully created.' }
        format.json { render :show, status: :created, location: @l_sensor }
      else
        format.html { render :new }
        format.json { render json: @l_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /l_sensors/1
  # PATCH/PUT /l_sensors/1.json
  def update
    respond_to do |format|
      if @l_sensor.update(l_sensor_params)
        format.html { redirect_to @l_sensor, notice: 'L sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @l_sensor }
      else
        format.html { render :edit }
        format.json { render json: @l_sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /l_sensors/1
  # DELETE /l_sensors/1.json
  def destroy
    @l_sensor.destroy
    respond_to do |format|
      format.html { redirect_to l_sensors_url, notice: 'L sensor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_l_sensor
      @l_sensor = LSensor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def l_sensor_params
      params.require(:l_sensor).permit(:sensor_address)
    end
end
