class ArFlampactuatorLamptypesController < ApplicationController
  before_action :set_ar_flampactuator_lamptype, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_lamptypes
  # GET /ar_flampactuator_lamptypes.json
  def index
    @ar_flampactuator_lamptypes = ArFlampactuatorLamptype.all
  end

  # GET /ar_flampactuator_lamptypes/1
  # GET /ar_flampactuator_lamptypes/1.json
  def show
  end

  # GET /ar_flampactuator_lamptypes/new
  def new
    @ar_flampactuator_lamptype = ArFlampactuatorLamptype.new
  end

  # GET /ar_flampactuator_lamptypes/1/edit
  def edit
  end

  # POST /ar_flampactuator_lamptypes
  # POST /ar_flampactuator_lamptypes.json
  def create
    @ar_flampactuator_lamptype = ArFlampactuatorLamptype.new(ar_flampactuator_lamptype_params)

    respond_to do |format|
      if @ar_flampactuator_lamptype.save
        format.html { redirect_to @ar_flampactuator_lamptype, notice: 'Ar flampactuator lamptype was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_lamptype }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_lamptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_lamptypes/1
  # PATCH/PUT /ar_flampactuator_lamptypes/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_lamptype.update(ar_flampactuator_lamptype_params)
        format.html { redirect_to @ar_flampactuator_lamptype, notice: 'Ar flampactuator lamptype was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_lamptype }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_lamptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_lamptypes/1
  # DELETE /ar_flampactuator_lamptypes/1.json
  def destroy
    @ar_flampactuator_lamptype.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_lamptypes_url, notice: 'Ar flampactuator lamptype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_lamptype
      @ar_flampactuator_lamptype = ArFlampactuatorLamptype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_lamptype_params
      params.require(:ar_flampactuator_lamptype).permit(:f_lampactuator_id, :el_lamptype_id)
    end
end
