class AdescFbridgesController < ApplicationController
  before_action :set_adesc_fbridge, only: [:show, :edit, :update, :destroy]

  # GET /adesc_fbridges
  # GET /adesc_fbridges.json
  def index
    @adesc_fbridges = AdescFbridge.all
  end

  # GET /adesc_fbridges/1
  # GET /adesc_fbridges/1.json
  def show
  end

  # GET /adesc_fbridges/new
  def new
    @adesc_fbridge = AdescFbridge.new
  end

  # GET /adesc_fbridges/1/edit
  def edit
  end

  # POST /adesc_fbridges
  # POST /adesc_fbridges.json
  def create
    @adesc_fbridge = AdescFbridge.new(adesc_fbridge_params)

    respond_to do |format|
      if @adesc_fbridge.save
        format.html { redirect_to @adesc_fbridge, notice: 'Adesc fbridge was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_fbridge }
      else
        format.html { render :new }
        format.json { render json: @adesc_fbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_fbridges/1
  # PATCH/PUT /adesc_fbridges/1.json
  def update
    respond_to do |format|
      if @adesc_fbridge.update(adesc_fbridge_params)
        format.html { redirect_to @adesc_fbridge, notice: 'Adesc fbridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_fbridge }
      else
        format.html { render :edit }
        format.json { render json: @adesc_fbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_fbridges/1
  # DELETE /adesc_fbridges/1.json
  def destroy
    @adesc_fbridge.destroy
    respond_to do |format|
      format.html { redirect_to adesc_fbridges_url, notice: 'Adesc fbridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_fbridge
      @adesc_fbridge = AdescFbridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_fbridge_params
      params.require(:adesc_fbridge).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
