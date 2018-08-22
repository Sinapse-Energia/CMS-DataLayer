class VDynamicoperationsController < ApplicationController
  before_action :set_v_dynamicoperation, only: [:show, :edit, :update, :destroy]

  # GET /v_dynamicoperations
  # GET /v_dynamicoperations.json
  def index
    @v_dynamicoperations = VDynamicoperation.all
  end

  # GET /v_dynamicoperations/1
  # GET /v_dynamicoperations/1.json
  def show
  end

  # GET /v_dynamicoperations/new
  def new
    @v_dynamicoperation = VDynamicoperation.new
  end

  # GET /v_dynamicoperations/1/edit
  def edit
  end

  # POST /v_dynamicoperations
  # POST /v_dynamicoperations.json
  def create
    @v_dynamicoperation = VDynamicoperation.new(v_dynamicoperation_params)

    respond_to do |format|
      if @v_dynamicoperation.save
        format.html { redirect_to @v_dynamicoperation, notice: 'V dynamicoperation was successfully created.' }
        format.json { render :show, status: :created, location: @v_dynamicoperation }
      else
        format.html { render :new }
        format.json { render json: @v_dynamicoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_dynamicoperations/1
  # PATCH/PUT /v_dynamicoperations/1.json
  def update
    respond_to do |format|
      if @v_dynamicoperation.update(v_dynamicoperation_params)
        format.html { redirect_to @v_dynamicoperation, notice: 'V dynamicoperation was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_dynamicoperation }
      else
        format.html { render :edit }
        format.json { render json: @v_dynamicoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_dynamicoperations/1
  # DELETE /v_dynamicoperations/1.json
  def destroy
    @v_dynamicoperation.destroy
    respond_to do |format|
      format.html { redirect_to v_dynamicoperations_url, notice: 'V dynamicoperation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_dynamicoperation
      @v_dynamicoperation = VDynamicoperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_dynamicoperation_params
      params.require(:v_dynamicoperation).permit(:name)
    end
end
