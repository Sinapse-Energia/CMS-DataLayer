class AFbasicsController < ApplicationController
  before_action :set_a_fbasic, only: [:show, :edit, :update, :destroy]

  # GET /a_fbasics
  # GET /a_fbasics.json
  def index
    @a_fbasics = AFbasic.all
  end

  # GET /a_fbasics/1
  # GET /a_fbasics/1.json
  def show
  end

  # GET /a_fbasics/new
  def new
    @a_fbasic = AFbasic.new
  end

  # GET /a_fbasics/1/edit
  def edit
  end

  # POST /a_fbasics
  # POST /a_fbasics.json
  def create
    @a_fbasic = AFbasic.new(a_fbasic_params)

    respond_to do |format|
      if @a_fbasic.save
        format.html { redirect_to @a_fbasic, notice: 'A fbasic was successfully created.' }
        format.json { render :show, status: :created, location: @a_fbasic }
      else
        format.html { render :new }
        format.json { render json: @a_fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_fbasics/1
  # PATCH/PUT /a_fbasics/1.json
  def update
    respond_to do |format|
      if @a_fbasic.update(a_fbasic_params)
        format.html { redirect_to @a_fbasic, notice: 'A fbasic was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_fbasic }
      else
        format.html { render :edit }
        format.json { render json: @a_fbasic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_fbasics/1
  # DELETE /a_fbasics/1.json
  def destroy
    @a_fbasic.destroy
    respond_to do |format|
      format.html { redirect_to a_fbasics_url, notice: 'A fbasic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_fbasic
      @a_fbasic = AFbasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_fbasic_params
      params.require(:a_fbasic).permit(:value, :seqbridge, :seqcms, :adesc_fbasic_id, :f_basic_id)
    end
end
