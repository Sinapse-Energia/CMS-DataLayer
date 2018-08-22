class ArFlampactuatorTargetlightcommandsController < ApplicationController
  before_action :set_ar_flampactuator_targetlightcommand, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_targetlightcommands
  # GET /ar_flampactuator_targetlightcommands.json
  def index
    @ar_flampactuator_targetlightcommands = ArFlampactuatorTargetlightcommand.all
  end

  # GET /ar_flampactuator_targetlightcommands/1
  # GET /ar_flampactuator_targetlightcommands/1.json
  def show
  end

  # GET /ar_flampactuator_targetlightcommands/new
  def new
    @ar_flampactuator_targetlightcommand = ArFlampactuatorTargetlightcommand.new
  end

  # GET /ar_flampactuator_targetlightcommands/1/edit
  def edit
  end

  # POST /ar_flampactuator_targetlightcommands
  # POST /ar_flampactuator_targetlightcommands.json
  def create
    @ar_flampactuator_targetlightcommand = ArFlampactuatorTargetlightcommand.new(ar_flampactuator_targetlightcommand_params)

    respond_to do |format|
      if @ar_flampactuator_targetlightcommand.save
        format.html { redirect_to @ar_flampactuator_targetlightcommand, notice: 'Ar flampactuator targetlightcommand was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_targetlightcommand }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_targetlightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_targetlightcommands/1
  # PATCH/PUT /ar_flampactuator_targetlightcommands/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_targetlightcommand.update(ar_flampactuator_targetlightcommand_params)
        format.html { redirect_to @ar_flampactuator_targetlightcommand, notice: 'Ar flampactuator targetlightcommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_targetlightcommand }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_targetlightcommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_targetlightcommands/1
  # DELETE /ar_flampactuator_targetlightcommands/1.json
  def destroy
    @ar_flampactuator_targetlightcommand.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_targetlightcommands_url, notice: 'Ar flampactuator targetlightcommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_targetlightcommand
      @ar_flampactuator_targetlightcommand = ArFlampactuatorTargetlightcommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_targetlightcommand_params
      params.require(:ar_flampactuator_targetlightcommand).permit(:f_lampactuator_id, :l_lightcommand_id)
    end
end
