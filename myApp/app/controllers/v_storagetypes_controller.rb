class VStoragetypesController < ApplicationController
  before_action :set_v_storagetype, only: [:show, :edit, :update, :destroy]

  # GET /v_storagetypes
  # GET /v_storagetypes.json
  def index
    @v_storagetypes = VStoragetype.all
  end

  # GET /v_storagetypes/1
  # GET /v_storagetypes/1.json
  def show
  end

  # GET /v_storagetypes/new
  def new
    @v_storagetype = VStoragetype.new
  end

  # GET /v_storagetypes/1/edit
  def edit
  end

  # POST /v_storagetypes
  # POST /v_storagetypes.json
  def create
    @v_storagetype = VStoragetype.new(v_storagetype_params)

    respond_to do |format|
      if @v_storagetype.save
        format.html { redirect_to @v_storagetype, notice: 'V storagetype was successfully created.' }
        format.json { render :show, status: :created, location: @v_storagetype }
      else
        format.html { render :new }
        format.json { render json: @v_storagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_storagetypes/1
  # PATCH/PUT /v_storagetypes/1.json
  def update
    respond_to do |format|
      if @v_storagetype.update(v_storagetype_params)
        format.html { redirect_to @v_storagetype, notice: 'V storagetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_storagetype }
      else
        format.html { render :edit }
        format.json { render json: @v_storagetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_storagetypes/1
  # DELETE /v_storagetypes/1.json
  def destroy
    @v_storagetype.destroy
    respond_to do |format|
      format.html { redirect_to v_storagetypes_url, notice: 'V storagetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_storagetype
      @v_storagetype = VStoragetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_storagetype_params
      params.require(:v_storagetype).permit(:name)
    end
end
