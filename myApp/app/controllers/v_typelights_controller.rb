class VTypelightsController < ApplicationController
  before_action :set_v_typelight, only: [:show, :edit, :update, :destroy]

  # GET /v_typelights
  # GET /v_typelights.json
  def index
    @v_typelights = VTypelight.all
  end

  # GET /v_typelights/1
  # GET /v_typelights/1.json
  def show
  end

  # GET /v_typelights/new
  def new
    @v_typelight = VTypelight.new
  end

  # GET /v_typelights/1/edit
  def edit
  end

  # POST /v_typelights
  # POST /v_typelights.json
  def create
    @v_typelight = VTypelight.new(v_typelight_params)

    respond_to do |format|
      if @v_typelight.save
        format.html { redirect_to @v_typelight, notice: 'V typelight was successfully created.' }
        format.json { render :show, status: :created, location: @v_typelight }
      else
        format.html { render :new }
        format.json { render json: @v_typelight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typelights/1
  # PATCH/PUT /v_typelights/1.json
  def update
    respond_to do |format|
      if @v_typelight.update(v_typelight_params)
        format.html { redirect_to @v_typelight, notice: 'V typelight was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typelight }
      else
        format.html { render :edit }
        format.json { render json: @v_typelight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typelights/1
  # DELETE /v_typelights/1.json
  def destroy
    @v_typelight.destroy
    respond_to do |format|
      format.html { redirect_to v_typelights_url, notice: 'V typelight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typelight
      @v_typelight = VTypelight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typelight_params
      params.require(:v_typelight).permit(:name, :short_name)
    end
end
