class VControltypesController < ApplicationController
  before_action :set_v_controltype, only: [:show, :edit, :update, :destroy]

  # GET /v_controltypes
  # GET /v_controltypes.json
  def index
    @v_controltypes = VControltype.all
  end

  # GET /v_controltypes/1
  # GET /v_controltypes/1.json
  def show
  end

  # GET /v_controltypes/new
  def new
    @v_controltype = VControltype.new
  end

  # GET /v_controltypes/1/edit
  def edit
  end

  # POST /v_controltypes
  # POST /v_controltypes.json
  def create
    @v_controltype = VControltype.new(v_controltype_params)

    respond_to do |format|
      if @v_controltype.save
        format.html { redirect_to @v_controltype, notice: 'V controltype was successfully created.' }
        format.json { render :show, status: :created, location: @v_controltype }
      else
        format.html { render :new }
        format.json { render json: @v_controltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_controltypes/1
  # PATCH/PUT /v_controltypes/1.json
  def update
    respond_to do |format|
      if @v_controltype.update(v_controltype_params)
        format.html { redirect_to @v_controltype, notice: 'V controltype was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_controltype }
      else
        format.html { render :edit }
        format.json { render json: @v_controltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_controltypes/1
  # DELETE /v_controltypes/1.json
  def destroy
    @v_controltype.destroy
    respond_to do |format|
      format.html { redirect_to v_controltypes_url, notice: 'V controltype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_controltype
      @v_controltype = VControltype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_controltype_params
      params.require(:v_controltype).permit(:name)
    end
end
