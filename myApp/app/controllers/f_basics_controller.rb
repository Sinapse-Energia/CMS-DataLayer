class FBasicsController < ApplicationController
  before_action :set_f_basic, only: [:show, :edit, :update, :destroy]

  # GET /f_basics
  # GET /f_basics.json
  def index
    @f_basics = FBasic.all
  end

  # GET /f_basics/1
  # GET /f_basics/1.json
  def show
  end

  # GET /f_basics/new
  def new
    @f_basic = FBasic.new
  end

  # GET /f_basics/1/edit
  def edit
  end

  # POST /f_basics
  # POST /f_basics.json
  def create
    @f_basic = FBasic.new(f_basic_params)

    respond_to do |format|
      if @f_basic.save
        format.html { redirect_to @f_basic, notice: 'F basic was successfully created.' }
        format.json { render :show, status: :created, location: @f_basic }
      else
        format.html { render :new }
        format.json { render json: @f_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_basics/1
  # PATCH/PUT /f_basics/1.json
  def update
    respond_to do |format|
      if @f_basic.update(f_basic_params)
        format.html { redirect_to @f_basic, notice: 'F basic was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_basic }
      else
        format.html { render :edit }
        format.json { render json: @f_basic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_basics/1
  # DELETE /f_basics/1.json
  def destroy
    @f_basic.destroy
    respond_to do |format|
      format.html { redirect_to f_basics_url, notice: 'F basic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_basic
      @f_basic = FBasic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_basic_params
      params.require(:f_basic).permit(:ed_logicaldev_id)
    end
end
