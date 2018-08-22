class FBridgesController < ApplicationController
  before_action :set_f_bridge, only: [:show, :edit, :update, :destroy]

  # GET /f_bridges
  # GET /f_bridges.json
  def index
    @f_bridges = FBridge.all
  end

  # GET /f_bridges/1
  # GET /f_bridges/1.json
  def show
  end

  # GET /f_bridges/new
  def new
    @f_bridge = FBridge.new
  end

  # GET /f_bridges/1/edit
  def edit
  end

  # POST /f_bridges
  # POST /f_bridges.json
  def create
    @f_bridge = FBridge.new(f_bridge_params)

    respond_to do |format|
      if @f_bridge.save
        format.html { redirect_to @f_bridge, notice: 'F bridge was successfully created.' }
        format.json { render :show, status: :created, location: @f_bridge }
      else
        format.html { render :new }
        format.json { render json: @f_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_bridges/1
  # PATCH/PUT /f_bridges/1.json
  def update
    respond_to do |format|
      if @f_bridge.update(f_bridge_params)
        format.html { redirect_to @f_bridge, notice: 'F bridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_bridge }
      else
        format.html { render :edit }
        format.json { render json: @f_bridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_bridges/1
  # DELETE /f_bridges/1.json
  def destroy
    @f_bridge.destroy
    respond_to do |format|
      format.html { redirect_to f_bridges_url, notice: 'F bridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_bridge
      @f_bridge = FBridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_bridge_params
      params.require(:f_bridge).permit(:ed_logicaldev_id)
    end
end
