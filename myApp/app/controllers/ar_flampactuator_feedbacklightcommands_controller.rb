class ArFlampactuatorFeedbacklightcommandsController < ApplicationController
  before_action :set_ar_flampactuator_feedbacklightcommand, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_feedbacklightcommands
  # GET /ar_flampactuator_feedbacklightcommands.json
  def index
    @ar_flampactuator_feedbacklightcommands = ArFlampactuatorFeedbacklightcommand.all
  end

  # GET /ar_flampactuator_feedbacklightcommands/1
  # GET /ar_flampactuator_feedbacklightcommands/1.json
  def show
  end

  # GET /ar_flampactuator_feedbacklightcommands/new
  def new
    @ar_flampactuator_feedbacklightcommand = ArFlampactuatorFeedbacklightcommand.new
  end

  # GET /ar_flampactuator_feedbacklightcommands/1/edit
  def edit
  end

  # POST /ar_flampactuator_feedbacklightcommands
  # POST /ar_flampactuator_feedbacklightcommands.json
  def create
    @ar_flampactuator_feedbacklightcommand = ArFlampactuatorFeedbacklightcommand.new(ar_flampactuator_feedbacklightcommand_params)

    respond_to do |format|
      if @ar_flampactuator_feedbacklightcommand.save
        format.html { redirect_to @ar_flampactuator_feedbacklightcommand, notice: 'Ar flampactuator feedbacklightcommand was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_feedbacklightcommand }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_feedbacklightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_feedbacklightcommands/1
  # PATCH/PUT /ar_flampactuator_feedbacklightcommands/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_feedbacklightcommand.update(ar_flampactuator_feedbacklightcommand_params)
        format.html { redirect_to @ar_flampactuator_feedbacklightcommand, notice: 'Ar flampactuator feedbacklightcommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_feedbacklightcommand }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_feedbacklightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_feedbacklightcommands/1
  # DELETE /ar_flampactuator_feedbacklightcommands/1.json
  def destroy
    @ar_flampactuator_feedbacklightcommand.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_feedbacklightcommands_url, notice: 'Ar flampactuator feedbacklightcommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_feedbacklightcommand
      @ar_flampactuator_feedbacklightcommand = ArFlampactuatorFeedbacklightcommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_feedbacklightcommand_params
      params.require(:ar_flampactuator_feedbacklightcommand).permit(:f_lampactuator_id, :l_lightcommand_id)
    end
end
