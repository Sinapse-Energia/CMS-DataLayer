class AdescFelectricalmetersController < ApplicationController
  before_action :set_adesc_felectricalmeter, only: [:show, :edit, :update, :destroy]

  # GET /adesc_felectricalmeters
  # GET /adesc_felectricalmeters.json
  def index
    @adesc_felectricalmeters = AdescFelectricalmeter.all
  end

  # GET /adesc_felectricalmeters/1
  # GET /adesc_felectricalmeters/1.json
  def show
  end

  # GET /adesc_felectricalmeters/new
  def new
    @adesc_felectricalmeter = AdescFelectricalmeter.new
  end

  # GET /adesc_felectricalmeters/1/edit
  def edit
  end

  # POST /adesc_felectricalmeters
  # POST /adesc_felectricalmeters.json
  def create
    @adesc_felectricalmeter = AdescFelectricalmeter.new(adesc_felectricalmeter_params)

    respond_to do |format|
      if @adesc_felectricalmeter.save
        format.html { redirect_to @adesc_felectricalmeter, notice: 'Adesc felectricalmeter was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_felectricalmeter }
      else
        format.html { render :new }
        format.json { render json: @adesc_felectricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_felectricalmeters/1
  # PATCH/PUT /adesc_felectricalmeters/1.json
  def update
    respond_to do |format|
      if @adesc_felectricalmeter.update(adesc_felectricalmeter_params)
        format.html { redirect_to @adesc_felectricalmeter, notice: 'Adesc felectricalmeter was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_felectricalmeter }
      else
        format.html { render :edit }
        format.json { render json: @adesc_felectricalmeter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_felectricalmeters/1
  # DELETE /adesc_felectricalmeters/1.json
  def destroy
    @adesc_felectricalmeter.destroy
    respond_to do |format|
      format.html { redirect_to adesc_felectricalmeters_url, notice: 'Adesc felectricalmeter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_felectricalmeter
      @adesc_felectricalmeter = AdescFelectricalmeter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_felectricalmeter_params
      params.require(:adesc_felectricalmeter).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
