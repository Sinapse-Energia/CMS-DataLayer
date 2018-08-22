class FCommunicationsController < ApplicationController
  before_action :set_f_communication, only: [:show, :edit, :update, :destroy]

  # GET /f_communications
  # GET /f_communications.json
  def index
    @f_communications = FCommunication.all
  end

  # GET /f_communications/1
  # GET /f_communications/1.json
  def show
  end

  # GET /f_communications/new
  def new
    @f_communication = FCommunication.new
  end

  # GET /f_communications/1/edit
  def edit
  end

  # POST /f_communications
  # POST /f_communications.json
  def create
    @f_communication = FCommunication.new(f_communication_params)

    respond_to do |format|
      if @f_communication.save
        format.html { redirect_to @f_communication, notice: 'F communication was successfully created.' }
        format.json { render :show, status: :created, location: @f_communication }
      else
        format.html { render :new }
        format.json { render json: @f_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_communications/1
  # PATCH/PUT /f_communications/1.json
  def update
    respond_to do |format|
      if @f_communication.update(f_communication_params)
        format.html { redirect_to @f_communication, notice: 'F communication was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_communication }
      else
        format.html { render :edit }
        format.json { render json: @f_communication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_communications/1
  # DELETE /f_communications/1.json
  def destroy
    @f_communication.destroy
    respond_to do |format|
      format.html { redirect_to f_communications_url, notice: 'F communication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_communication
      @f_communication = FCommunication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_communication_params
      params.require(:f_communication).permit(:ed_logicaldev_id)
    end
end
