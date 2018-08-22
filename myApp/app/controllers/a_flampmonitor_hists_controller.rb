class AFlampmonitorHistsController < ApplicationController
  before_action :set_a_flampmonitor_hist, only: [:show, :edit, :update, :destroy]

  # GET /a_flampmonitor_hists
  # GET /a_flampmonitor_hists.json
  def index
    @a_flampmonitor_hists = AFlampmonitorHist.all
  end

  # GET /a_flampmonitor_hists/1
  # GET /a_flampmonitor_hists/1.json
  def show
  end

  # GET /a_flampmonitor_hists/new
  def new
    @a_flampmonitor_hist = AFlampmonitorHist.new
  end

  # GET /a_flampmonitor_hists/1/edit
  def edit
  end

  # POST /a_flampmonitor_hists
  # POST /a_flampmonitor_hists.json
  def create
    @a_flampmonitor_hist = AFlampmonitorHist.new(a_flampmonitor_hist_params)

    respond_to do |format|
      if @a_flampmonitor_hist.save
        format.html { redirect_to @a_flampmonitor_hist, notice: 'A flampmonitor hist was successfully created.' }
        format.json { render :show, status: :created, location: @a_flampmonitor_hist }
      else
        format.html { render :new }
        format.json { render json: @a_flampmonitor_hist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_flampmonitor_hists/1
  # PATCH/PUT /a_flampmonitor_hists/1.json
  def update
    respond_to do |format|
      if @a_flampmonitor_hist.update(a_flampmonitor_hist_params)
        format.html { redirect_to @a_flampmonitor_hist, notice: 'A flampmonitor hist was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_flampmonitor_hist }
      else
        format.html { render :edit }
        format.json { render json: @a_flampmonitor_hist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_flampmonitor_hists/1
  # DELETE /a_flampmonitor_hists/1.json
  def destroy
    @a_flampmonitor_hist.destroy
    respond_to do |format|
      format.html { redirect_to a_flampmonitor_hists_url, notice: 'A flampmonitor hist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_flampmonitor_hist
      @a_flampmonitor_hist = AFlampmonitorHist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_flampmonitor_hist_params
      params.require(:a_flampmonitor_hist).permit(:ed_logicaldev_id, :adesc_flampmonitor_id, :value, :time_stamp, :type_count)
    end
end
