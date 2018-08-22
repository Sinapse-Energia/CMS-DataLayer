class AdescFcommsController < ApplicationController
  before_action :set_adesc_fcomm, only: [:show, :edit, :update, :destroy]

  # GET /adesc_fcomms
  # GET /adesc_fcomms.json
  def index
    @adesc_fcomms = AdescFcomm.all
  end

  # GET /adesc_fcomms/1
  # GET /adesc_fcomms/1.json
  def show
  end

  # GET /adesc_fcomms/new
  def new
    @adesc_fcomm = AdescFcomm.new
  end

  # GET /adesc_fcomms/1/edit
  def edit
  end

  # POST /adesc_fcomms
  # POST /adesc_fcomms.json
  def create
    @adesc_fcomm = AdescFcomm.new(adesc_fcomm_params)

    respond_to do |format|
      if @adesc_fcomm.save
        format.html { redirect_to @adesc_fcomm, notice: 'Adesc fcomm was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_fcomm }
      else
        format.html { render :new }
        format.json { render json: @adesc_fcomm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_fcomms/1
  # PATCH/PUT /adesc_fcomms/1.json
  def update
    respond_to do |format|
      if @adesc_fcomm.update(adesc_fcomm_params)
        format.html { redirect_to @adesc_fcomm, notice: 'Adesc fcomm was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_fcomm }
      else
        format.html { render :edit }
        format.json { render json: @adesc_fcomm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_fcomms/1
  # DELETE /adesc_fcomms/1.json
  def destroy
    @adesc_fcomm.destroy
    respond_to do |format|
      format.html { redirect_to adesc_fcomms_url, notice: 'Adesc fcomm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_fcomm
      @adesc_fcomm = AdescFcomm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_fcomm_params
      params.require(:adesc_fcomm).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
