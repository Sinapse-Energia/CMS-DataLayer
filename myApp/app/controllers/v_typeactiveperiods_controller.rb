class VTypeactiveperiodsController < ApplicationController
  before_action :set_v_typeactiveperiod, only: [:show, :edit, :update, :destroy]

  # GET /v_typeactiveperiods
  # GET /v_typeactiveperiods.json
  def index
    @v_typeactiveperiods = VTypeactiveperiod.all
  end

  # GET /v_typeactiveperiods/1
  # GET /v_typeactiveperiods/1.json
  def show
  end

  # GET /v_typeactiveperiods/new
  def new
    @v_typeactiveperiod = VTypeactiveperiod.new
  end

  # GET /v_typeactiveperiods/1/edit
  def edit
  end

  # POST /v_typeactiveperiods
  # POST /v_typeactiveperiods.json
  def create
    @v_typeactiveperiod = VTypeactiveperiod.new(v_typeactiveperiod_params)

    respond_to do |format|
      if @v_typeactiveperiod.save
        format.html { redirect_to @v_typeactiveperiod, notice: 'V typeactiveperiod was successfully created.' }
        format.json { render :show, status: :created, location: @v_typeactiveperiod }
      else
        format.html { render :new }
        format.json { render json: @v_typeactiveperiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typeactiveperiods/1
  # PATCH/PUT /v_typeactiveperiods/1.json
  def update
    respond_to do |format|
      if @v_typeactiveperiod.update(v_typeactiveperiod_params)
        format.html { redirect_to @v_typeactiveperiod, notice: 'V typeactiveperiod was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typeactiveperiod }
      else
        format.html { render :edit }
        format.json { render json: @v_typeactiveperiod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typeactiveperiods/1
  # DELETE /v_typeactiveperiods/1.json
  def destroy
    @v_typeactiveperiod.destroy
    respond_to do |format|
      format.html { redirect_to v_typeactiveperiods_url, notice: 'V typeactiveperiod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typeactiveperiod
      @v_typeactiveperiod = VTypeactiveperiod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typeactiveperiod_params
      params.require(:v_typeactiveperiod).permit(:name)
    end
end
