class SiGeneralInformationsController < ApplicationController
  before_action :set_si_general_information, only: [:show, :edit, :update, :destroy]

  # GET /si_general_informations
  # GET /si_general_informations.json
  def index
    @si_general_informations = SiGeneralInformation.all
  end

  # GET /si_general_informations/1
  # GET /si_general_informations/1.json
  def show
  end

  # GET /si_general_informations/new
  def new
    @si_general_information = SiGeneralInformation.new
  end

  # GET /si_general_informations/1/edit
  def edit
  end

  # POST /si_general_informations
  # POST /si_general_informations.json
  def create
    @si_general_information = SiGeneralInformation.new(si_general_information_params)

    respond_to do |format|
      if @si_general_information.save
        format.html { redirect_to @si_general_information, notice: 'Si general information was successfully created.' }
        format.json { render :show, status: :created, location: @si_general_information }
      else
        format.html { render :new }
        format.json { render json: @si_general_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_general_informations/1
  # PATCH/PUT /si_general_informations/1.json
  def update
    respond_to do |format|
      if @si_general_information.update(si_general_information_params)
        format.html { redirect_to @si_general_information, notice: 'Si general information was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_general_information }
      else
        format.html { render :edit }
        format.json { render json: @si_general_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_general_informations/1
  # DELETE /si_general_informations/1.json
  def destroy
    @si_general_information.destroy
    respond_to do |format|
      format.html { redirect_to si_general_informations_url, notice: 'Si general information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_general_information
      @si_general_information = SiGeneralInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_general_information_params
      params.require(:si_general_information).permit(:name, :broker, :port, :user, :password)
    end
end
