class VReasonsController < ApplicationController
  before_action :set_v_reason, only: [:show, :edit, :update, :destroy]

  # GET /v_reasons
  # GET /v_reasons.json
  def index
    @v_reasons = VReason.all
  end

  # GET /v_reasons/1
  # GET /v_reasons/1.json
  def show
  end

  # GET /v_reasons/new
  def new
    @v_reason = VReason.new
  end

  # GET /v_reasons/1/edit
  def edit
  end

  # POST /v_reasons
  # POST /v_reasons.json
  def create
    @v_reason = VReason.new(v_reason_params)

    respond_to do |format|
      if @v_reason.save
        format.html { redirect_to @v_reason, notice: 'V reason was successfully created.' }
        format.json { render :show, status: :created, location: @v_reason }
      else
        format.html { render :new }
        format.json { render json: @v_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_reasons/1
  # PATCH/PUT /v_reasons/1.json
  def update
    respond_to do |format|
      if @v_reason.update(v_reason_params)
        format.html { redirect_to @v_reason, notice: 'V reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_reason }
      else
        format.html { render :edit }
        format.json { render json: @v_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_reasons/1
  # DELETE /v_reasons/1.json
  def destroy
    @v_reason.destroy
    respond_to do |format|
      format.html { redirect_to v_reasons_url, notice: 'V reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_reason
      @v_reason = VReason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_reason_params
      params.require(:v_reason).permit(:name)
    end
end
