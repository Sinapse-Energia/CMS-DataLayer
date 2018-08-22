class EpControlprogramsController < ApplicationController
  before_action :set_ep_controlprogram, only: [:show, :edit, :update, :destroy]

  # GET /ep_controlprograms
  # GET /ep_controlprograms.json
  def index
    @ep_controlprograms = EpControlprogram.all
  end

  # GET /ep_controlprograms/1
  # GET /ep_controlprograms/1.json
  def show
  end

  # GET /ep_controlprograms/new
  def new
    @ep_controlprogram = EpControlprogram.new
  end

  # GET /ep_controlprograms/1/edit
  def edit
  end

  # POST /ep_controlprograms
  # POST /ep_controlprograms.json
  def create
    @ep_controlprogram = EpControlprogram.new(ep_controlprogram_params)

    respond_to do |format|
      if @ep_controlprogram.save
        format.html { redirect_to @ep_controlprogram, notice: 'Ep controlprogram was successfully created.' }
        format.json { render :show, status: :created, location: @ep_controlprogram }
      else
        format.html { render :new }
        format.json { render json: @ep_controlprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ep_controlprograms/1
  # PATCH/PUT /ep_controlprograms/1.json
  def update
    respond_to do |format|
      if @ep_controlprogram.update(ep_controlprogram_params)
        format.html { redirect_to @ep_controlprogram, notice: 'Ep controlprogram was successfully updated.' }
        format.json { render :show, status: :ok, location: @ep_controlprogram }
      else
        format.html { render :edit }
        format.json { render json: @ep_controlprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ep_controlprograms/1
  # DELETE /ep_controlprograms/1.json
  def destroy
    @ep_controlprogram.destroy
    respond_to do |format|
      format.html { redirect_to ep_controlprograms_url, notice: 'Ep controlprogram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ep_controlprogram
      @ep_controlprogram = EpControlprogram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ep_controlprogram_params
      params.require(:ep_controlprogram).permit(:name, :seqbridge, :seqcms)
    end
end
