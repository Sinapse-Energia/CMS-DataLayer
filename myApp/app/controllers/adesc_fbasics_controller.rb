class AdescFbasicsController < ApplicationController
  before_action :set_adesc_fbasic, only: [:show, :edit, :update, :destroy]

  # GET /adesc_fbasics
  # GET /adesc_fbasics.json
  def index
    @adesc_fbasics = AdescFbasic.all
  end

  # GET /adesc_fbasics/1
  # GET /adesc_fbasics/1.json
  def show
  end

  # GET /adesc_fbasics/new
  def new
    @adesc_fbasic = AdescFbasic.new
  end

  # GET /adesc_fbasics/1/edit
  def edit
  end

  # POST /adesc_fbasics
  # POST /adesc_fbasics.json
  def create
    @adesc_fbasic = AdescFbasic.new(adesc_fbasic_params)

    respond_to do |format|
      if @adesc_fbasic.save
        format.html { redirect_to @adesc_fbasic, notice: 'Adesc fbasic was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_fbasic }
      else
        format.html { render :new }
        format.json { render json: @adesc_fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_fbasics/1
  # PATCH/PUT /adesc_fbasics/1.json
  def update
    respond_to do |format|
      if @adesc_fbasic.update(adesc_fbasic_params)
        format.html { redirect_to @adesc_fbasic, notice: 'Adesc fbasic was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_fbasic }
      else
        format.html { render :edit }
        format.json { render json: @adesc_fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_fbasics/1
  # DELETE /adesc_fbasics/1.json
  def destroy
    @adesc_fbasic.destroy
    respond_to do |format|
      format.html { redirect_to adesc_fbasics_url, notice: 'Adesc fbasic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_fbasic
      @adesc_fbasic = AdescFbasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_fbasic_params
      params.require(:adesc_fbasic).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
