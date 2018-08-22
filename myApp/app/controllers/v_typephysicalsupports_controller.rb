class VTypephysicalsupportsController < ApplicationController
  before_action :set_v_typephysicalsupport, only: [:show, :edit, :update, :destroy]

  # GET /v_typephysicalsupports
  # GET /v_typephysicalsupports.json
  def index
    @v_typephysicalsupports = VTypephysicalsupport.all
  end

  # GET /v_typephysicalsupports/1
  # GET /v_typephysicalsupports/1.json
  def show
  end

  # GET /v_typephysicalsupports/new
  def new
    @v_typephysicalsupport = VTypephysicalsupport.new
  end

  # GET /v_typephysicalsupports/1/edit
  def edit
  end

  # POST /v_typephysicalsupports
  # POST /v_typephysicalsupports.json
  def create
    @v_typephysicalsupport = VTypephysicalsupport.new(v_typephysicalsupport_params)

    respond_to do |format|
      if @v_typephysicalsupport.save
        format.html { redirect_to @v_typephysicalsupport, notice: 'V typephysicalsupport was successfully created.' }
        format.json { render :show, status: :created, location: @v_typephysicalsupport }
      else
        format.html { render :new }
        format.json { render json: @v_typephysicalsupport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typephysicalsupports/1
  # PATCH/PUT /v_typephysicalsupports/1.json
  def update
    respond_to do |format|
      if @v_typephysicalsupport.update(v_typephysicalsupport_params)
        format.html { redirect_to @v_typephysicalsupport, notice: 'V typephysicalsupport was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typephysicalsupport }
      else
        format.html { render :edit }
        format.json { render json: @v_typephysicalsupport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typephysicalsupports/1
  # DELETE /v_typephysicalsupports/1.json
  def destroy
    @v_typephysicalsupport.destroy
    respond_to do |format|
      format.html { redirect_to v_typephysicalsupports_url, notice: 'V typephysicalsupport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typephysicalsupport
      @v_typephysicalsupport = VTypephysicalsupport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typephysicalsupport_params
      params.require(:v_typephysicalsupport).permit(:name, :short_name)
    end
end
