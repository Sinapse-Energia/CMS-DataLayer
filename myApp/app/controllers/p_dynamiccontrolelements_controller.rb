class PDynamiccontrolelementsController < ApplicationController
  before_action :set_p_dynamiccontrolelement, only: [:show, :edit, :update, :destroy]

  # GET /p_dynamiccontrolelements
  # GET /p_dynamiccontrolelements.json
  def index
    @p_dynamiccontrolelements = PDynamiccontrolelement.all
  end

  # GET /p_dynamiccontrolelements/1
  # GET /p_dynamiccontrolelements/1.json
  def show
  end

  # GET /p_dynamiccontrolelements/new
  def new
    @p_dynamiccontrolelement = PDynamiccontrolelement.new
  end

  # GET /p_dynamiccontrolelements/1/edit
  def edit
  end

  # POST /p_dynamiccontrolelements
  # POST /p_dynamiccontrolelements.json
  def create
    @p_dynamiccontrolelement = PDynamiccontrolelement.new(p_dynamiccontrolelement_params)

    respond_to do |format|
      if @p_dynamiccontrolelement.save
        format.html { redirect_to @p_dynamiccontrolelement, notice: 'P dynamiccontrolelement was successfully created.' }
        format.json { render :show, status: :created, location: @p_dynamiccontrolelement }
      else
        format.html { render :new }
        format.json { render json: @p_dynamiccontrolelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_dynamiccontrolelements/1
  # PATCH/PUT /p_dynamiccontrolelements/1.json
  def update
    respond_to do |format|
      if @p_dynamiccontrolelement.update(p_dynamiccontrolelement_params)
        format.html { redirect_to @p_dynamiccontrolelement, notice: 'P dynamiccontrolelement was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_dynamiccontrolelement }
      else
        format.html { render :edit }
        format.json { render json: @p_dynamiccontrolelement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_dynamiccontrolelements/1
  # DELETE /p_dynamiccontrolelements/1.json
  def destroy
    @p_dynamiccontrolelement.destroy
    respond_to do |format|
      format.html { redirect_to p_dynamiccontrolelements_url, notice: 'P dynamiccontrolelement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_dynamiccontrolelement
      @p_dynamiccontrolelement = PDynamiccontrolelement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_dynamiccontrolelement_params
      params.require(:p_dynamiccontrolelement).permit(:start_time, :end_time, :is_fixed, :p_dynamicoperation_id, :l_lightcommand_id, :l_sensor_id, :ep_controlprogram_id)
    end
end
