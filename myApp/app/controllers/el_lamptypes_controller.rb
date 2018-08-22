class ElLamptypesController < ApplicationController
  before_action :set_el_lamptype, only: [:show, :edit, :update, :destroy]

  # GET /el_lamptypes
  # GET /el_lamptypes.json
  def index
    @el_lamptypes = ElLamptype.all
  end

  # GET /el_lamptypes/1
  # GET /el_lamptypes/1.json
  def show
  end

  # GET /el_lamptypes/new
  def new
    @el_lamptype = ElLamptype.new
  end

  # GET /el_lamptypes/1/edit
  def edit
  end

  # POST /el_lamptypes
  # POST /el_lamptypes.json
  def create
    @el_lamptype = ElLamptype.new(el_lamptype_params)

    respond_to do |format|
      if @el_lamptype.save
        format.html { redirect_to @el_lamptype, notice: 'El lamptype was successfully created.' }
        format.json { render :show, status: :created, location: @el_lamptype }
      else
        format.html { render :new }
        format.json { render json: @el_lamptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /el_lamptypes/1
  # PATCH/PUT /el_lamptypes/1.json
  def update
    respond_to do |format|
      if @el_lamptype.update(el_lamptype_params)
        format.html { redirect_to @el_lamptype, notice: 'El lamptype was successfully updated.' }
        format.json { render :show, status: :ok, location: @el_lamptype }
      else
        format.html { render :edit }
        format.json { render json: @el_lamptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /el_lamptypes/1
  # DELETE /el_lamptypes/1.json
  def destroy
    @el_lamptype.destroy
    respond_to do |format|
      format.html { redirect_to el_lamptypes_url, notice: 'El lamptype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_el_lamptype
      @el_lamptype = ElLamptype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def el_lamptype_params
      params.require(:el_lamptype).permit(:name, :address, :wattage, :v_controltype_id, :control_volmax, :control_volmin, :min_lightoutput, :virtual_lightoutput, :dali_ledlinear, :warmup_time, :cooldown_time, :low_currentthreshold, :high_currentthreshold, :low_lampvoltagethreshold, :high_lampvoltagethreshold, :max_operationghours, :powerlightgradient, :lamppowertolerance, :lamppowerhighthreshold, :lamppowerlowthreshold, :powerfactorthreshold, :lumendrepreciationcurve, :v_clotype_id, :seqbridge, :seqcms)
    end
end
