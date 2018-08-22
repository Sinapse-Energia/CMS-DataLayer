class AFelectricalmetersController < ApplicationController
  before_action :set_a_felectricalmeter, only: [:show, :edit, :update, :destroy]

  # GET /a_felectricalmeters
  # GET /a_felectricalmeters.json
  def index
    @a_felectricalmeters = AFelectricalmeter.all
  end

  # GET /a_felectricalmeters/1
  # GET /a_felectricalmeters/1.json
  def show
  end

  # GET /a_felectricalmeters/new
  def new
    @a_felectricalmeter = AFelectricalmeter.new
  end

  # GET /a_felectricalmeters/1/edit
  def edit
  end

  # POST /a_felectricalmeters
  # POST /a_felectricalmeters.json
  def create
    @a_felectricalmeter = AFelectricalmeter.new(a_felectricalmeter_params)

    respond_to do |format|
      if @a_felectricalmeter.save
        format.html { redirect_to @a_felectricalmeter, notice: 'A felectricalmeter was successfully created.' }
        format.json { render :show, status: :created, location: @a_felectricalmeter }
      else
        format.html { render :new }
        format.json { render json: @a_felectricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_felectricalmeters/1
  # PATCH/PUT /a_felectricalmeters/1.json
  def update
    respond_to do |format|
      if @a_felectricalmeter.update(a_felectricalmeter_params)
        format.html { redirect_to @a_felectricalmeter, notice: 'A felectricalmeter was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_felectricalmeter }
      else
        format.html { render :edit }
        format.json { render json: @a_felectricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_felectricalmeters/1
  # DELETE /a_felectricalmeters/1.json
  def destroy
    @a_felectricalmeter.destroy
    respond_to do |format|
      format.html { redirect_to a_felectricalmeters_url, notice: 'A felectricalmeter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_felectricalmeter
      @a_felectricalmeter = AFelectricalmeter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_felectricalmeter_params
      params.require(:a_felectricalmeter).permit(:value, :seqbridge, :seqcms, :adesc_felectricalmeter_id, :f_electricalmeter_id)
    end
end
