class VTypecommunicationsController < ApplicationController
  before_action :set_v_typecommunication, only: [:show, :edit, :update, :destroy]

  # GET /v_typecommunications
  # GET /v_typecommunications.json
  def index
    @v_typecommunications = VTypecommunication.all
  end

  # GET /v_typecommunications/1
  # GET /v_typecommunications/1.json
  def show
  end

  # GET /v_typecommunications/new
  def new
    @v_typecommunication = VTypecommunication.new
  end

  # GET /v_typecommunications/1/edit
  def edit
  end

  # POST /v_typecommunications
  # POST /v_typecommunications.json
  def create
    @v_typecommunication = VTypecommunication.new(v_typecommunication_params)

    respond_to do |format|
      if @v_typecommunication.save
        format.html { redirect_to @v_typecommunication, notice: 'V typecommunication was successfully created.' }
        format.json { render :show, status: :created, location: @v_typecommunication }
      else
        format.html { render :new }
        format.json { render json: @v_typecommunication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typecommunications/1
  # PATCH/PUT /v_typecommunications/1.json
  def update
    respond_to do |format|
      if @v_typecommunication.update(v_typecommunication_params)
        format.html { redirect_to @v_typecommunication, notice: 'V typecommunication was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typecommunication }
      else
        format.html { render :edit }
        format.json { render json: @v_typecommunication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typecommunications/1
  # DELETE /v_typecommunications/1.json
  def destroy
    @v_typecommunication.destroy
    respond_to do |format|
      format.html { redirect_to v_typecommunications_url, notice: 'V typecommunication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typecommunication
      @v_typecommunication = VTypecommunication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typecommunication_params
      params.require(:v_typecommunication).permit(:name)
    end
end
