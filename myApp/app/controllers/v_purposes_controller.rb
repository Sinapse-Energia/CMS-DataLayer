class VPurposesController < ApplicationController
  before_action :set_v_purpose, only: [:show, :edit, :update, :destroy]

  # GET /v_purposes
  # GET /v_purposes.json
  def index
    @v_purposes = VPurpose.all
  end

  # GET /v_purposes/1
  # GET /v_purposes/1.json
  def show
  end

  # GET /v_purposes/new
  def new
    @v_purpose = VPurpose.new
  end

  # GET /v_purposes/1/edit
  def edit
  end

  # POST /v_purposes
  # POST /v_purposes.json
  def create
    @v_purpose = VPurpose.new(v_purpose_params)

    respond_to do |format|
      if @v_purpose.save
        format.html { redirect_to @v_purpose, notice: 'V purpose was successfully created.' }
        format.json { render :show, status: :created, location: @v_purpose }
      else
        format.html { render :new }
        format.json { render json: @v_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_purposes/1
  # PATCH/PUT /v_purposes/1.json
  def update
    respond_to do |format|
      if @v_purpose.update(v_purpose_params)
        format.html { redirect_to @v_purpose, notice: 'V purpose was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_purpose }
      else
        format.html { render :edit }
        format.json { render json: @v_purpose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_purposes/1
  # DELETE /v_purposes/1.json
  def destroy
    @v_purpose.destroy
    respond_to do |format|
      format.html { redirect_to v_purposes_url, notice: 'V purpose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_purpose
      @v_purpose = VPurpose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_purpose_params
      params.require(:v_purpose).permit(:name)
    end
end
