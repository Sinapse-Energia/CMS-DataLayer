class VThresholdTypesController < ApplicationController
  before_action :set_v_threshold_type, only: [:show, :edit, :update, :destroy]

  # GET /v_threshold_types
  # GET /v_threshold_types.json
  def index
    @v_threshold_types = VThresholdType.all
  end

  # GET /v_threshold_types/1
  # GET /v_threshold_types/1.json
  def show
  end

  # GET /v_threshold_types/new
  def new
    @v_threshold_type = VThresholdType.new
  end

  # GET /v_threshold_types/1/edit
  def edit
  end

  # POST /v_threshold_types
  # POST /v_threshold_types.json
  def create
    @v_threshold_type = VThresholdType.new(v_threshold_type_params)

    respond_to do |format|
      if @v_threshold_type.save
        format.html { redirect_to @v_threshold_type, notice: 'V threshold type was successfully created.' }
        format.json { render :show, status: :created, location: @v_threshold_type }
      else
        format.html { render :new }
        format.json { render json: @v_threshold_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_threshold_types/1
  # PATCH/PUT /v_threshold_types/1.json
  def update
    respond_to do |format|
      if @v_threshold_type.update(v_threshold_type_params)
        format.html { redirect_to @v_threshold_type, notice: 'V threshold type was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_threshold_type }
      else
        format.html { render :edit }
        format.json { render json: @v_threshold_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_threshold_types/1
  # DELETE /v_threshold_types/1.json
  def destroy
    @v_threshold_type.destroy
    respond_to do |format|
      format.html { redirect_to v_threshold_types_url, notice: 'V threshold type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_threshold_type
      @v_threshold_type = VThresholdType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_threshold_type_params
      params.require(:v_threshold_type).permit(:name)
    end
end
