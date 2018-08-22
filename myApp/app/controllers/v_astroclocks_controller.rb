class VAstroclocksController < ApplicationController
  before_action :set_v_astroclock, only: [:show, :edit, :update, :destroy]

  # GET /v_astroclocks
  # GET /v_astroclocks.json
  def index
    @v_astroclocks = VAstroclock.all
  end

  # GET /v_astroclocks/1
  # GET /v_astroclocks/1.json
  def show
  end

  # GET /v_astroclocks/new
  def new
    @v_astroclock = VAstroclock.new
  end

  # GET /v_astroclocks/1/edit
  def edit
  end

  # POST /v_astroclocks
  # POST /v_astroclocks.json
  def create
    @v_astroclock = VAstroclock.new(v_astroclock_params)

    respond_to do |format|
      if @v_astroclock.save
        format.html { redirect_to @v_astroclock, notice: 'V astroclock was successfully created.' }
        format.json { render :show, status: :created, location: @v_astroclock }
      else
        format.html { render :new }
        format.json { render json: @v_astroclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_astroclocks/1
  # PATCH/PUT /v_astroclocks/1.json
  def update
    respond_to do |format|
      if @v_astroclock.update(v_astroclock_params)
        format.html { redirect_to @v_astroclock, notice: 'V astroclock was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_astroclock }
      else
        format.html { render :edit }
        format.json { render json: @v_astroclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_astroclocks/1
  # DELETE /v_astroclocks/1.json
  def destroy
    @v_astroclock.destroy
    respond_to do |format|
      format.html { redirect_to v_astroclocks_url, notice: 'V astroclock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_astroclock
      @v_astroclock = VAstroclock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_astroclock_params
      params.require(:v_astroclock).permit(:description)
    end
end
