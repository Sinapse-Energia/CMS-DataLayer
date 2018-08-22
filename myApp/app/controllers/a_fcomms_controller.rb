class AFcommsController < ApplicationController
  before_action :set_a_fcomm, only: [:show, :edit, :update, :destroy]

  # GET /a_fcomms
  # GET /a_fcomms.json
  def index
    @a_fcomms = AFcomm.all
  end

  # GET /a_fcomms/1
  # GET /a_fcomms/1.json
  def show
  end

  # GET /a_fcomms/new
  def new
    @a_fcomm = AFcomm.new
  end

  # GET /a_fcomms/1/edit
  def edit
  end

  # POST /a_fcomms
  # POST /a_fcomms.json
  def create
    @a_fcomm = AFcomm.new(a_fcomm_params)

    respond_to do |format|
      if @a_fcomm.save
        format.html { redirect_to @a_fcomm, notice: 'A fcomm was successfully created.' }
        format.json { render :show, status: :created, location: @a_fcomm }
      else
        format.html { render :new }
        format.json { render json: @a_fcomm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_fcomms/1
  # PATCH/PUT /a_fcomms/1.json
  def update
    respond_to do |format|
      if @a_fcomm.update(a_fcomm_params)
        format.html { redirect_to @a_fcomm, notice: 'A fcomm was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_fcomm }
      else
        format.html { render :edit }
        format.json { render json: @a_fcomm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_fcomms/1
  # DELETE /a_fcomms/1.json
  def destroy
    @a_fcomm.destroy
    respond_to do |format|
      format.html { redirect_to a_fcomms_url, notice: 'A fcomm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_fcomm
      @a_fcomm = AFcomm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_fcomm_params
      params.require(:a_fcomm).permit(:value, :seqbridge, :seqcms, :adesc_fcomm_id, :f_communication_id)
    end
end
