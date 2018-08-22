class AFbridgesController < ApplicationController
  before_action :set_a_fbridge, only: [:show, :edit, :update, :destroy]

  # GET /a_fbridges
  # GET /a_fbridges.json
  def index
    @a_fbridges = AFbridge.all
  end

  # GET /a_fbridges/1
  # GET /a_fbridges/1.json
  def show
  end

  # GET /a_fbridges/new
  def new
    @a_fbridge = AFbridge.new
  end

  # GET /a_fbridges/1/edit
  def edit
  end

  # POST /a_fbridges
  # POST /a_fbridges.json
  def create
    @a_fbridge = AFbridge.new(a_fbridge_params)

    respond_to do |format|
      if @a_fbridge.save
        format.html { redirect_to @a_fbridge, notice: 'A fbridge was successfully created.' }
        format.json { render :show, status: :created, location: @a_fbridge }
      else
        format.html { render :new }
        format.json { render json: @a_fbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_fbridges/1
  # PATCH/PUT /a_fbridges/1.json
  def update
    respond_to do |format|
      if @a_fbridge.update(a_fbridge_params)
        format.html { redirect_to @a_fbridge, notice: 'A fbridge was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_fbridge }
      else
        format.html { render :edit }
        format.json { render json: @a_fbridge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_fbridges/1
  # DELETE /a_fbridges/1.json
  def destroy
    @a_fbridge.destroy
    respond_to do |format|
      format.html { redirect_to a_fbridges_url, notice: 'A fbridge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_fbridge
      @a_fbridge = AFbridge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_fbridge_params
      params.require(:a_fbridge).permit(:value, :seqbridge, :seqcms, :adesc_fbridge_id, :f_bridge_id)
    end
end
