class AFelectricalmeterHistsController < ApplicationController
  before_action :set_a_felectricalmeter_hist, only: [:show, :edit, :update, :destroy]

  # GET /a_felectricalmeter_hists
  # GET /a_felectricalmeter_hists.json
  def index
    @a_felectricalmeter_hists = AFelectricalmeterHist.all
  end

  # GET /a_felectricalmeter_hists/1
  # GET /a_felectricalmeter_hists/1.json
  def show
  end

  # GET /a_felectricalmeter_hists/new
  def new
    @a_felectricalmeter_hist = AFelectricalmeterHist.new
  end

  # GET /a_felectricalmeter_hists/1/edit
  def edit
  end

  # POST /a_felectricalmeter_hists
  # POST /a_felectricalmeter_hists.json
  def create
    @a_felectricalmeter_hist = AFelectricalmeterHist.new(a_felectricalmeter_hist_params)

    respond_to do |format|
      if @a_felectricalmeter_hist.save
        format.html { redirect_to @a_felectricalmeter_hist, notice: 'A felectricalmeter hist was successfully created.' }
        format.json { render :show, status: :created, location: @a_felectricalmeter_hist }
      else
        format.html { render :new }
        format.json { render json: @a_felectricalmeter_hist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_felectricalmeter_hists/1
  # PATCH/PUT /a_felectricalmeter_hists/1.json
  def update
    respond_to do |format|
      if @a_felectricalmeter_hist.update(a_felectricalmeter_hist_params)
        format.html { redirect_to @a_felectricalmeter_hist, notice: 'A felectricalmeter hist was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_felectricalmeter_hist }
      else
        format.html { render :edit }
        format.json { render json: @a_felectricalmeter_hist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_felectricalmeter_hists/1
  # DELETE /a_felectricalmeter_hists/1.json
  def destroy
    @a_felectricalmeter_hist.destroy
    respond_to do |format|
      format.html { redirect_to a_felectricalmeter_hists_url, notice: 'A felectricalmeter hist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_felectricalmeter_hist
      @a_felectricalmeter_hist = AFelectricalmeterHist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_felectricalmeter_hist_params
      params.require(:a_felectricalmeter_hist).permit(:ed_logicaldev_id, :adesc_felectricalmeter_id, :value, :time_stamp, :type_count)
    end
end
