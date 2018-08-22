class PControlprogramtypesController < ApplicationController
  before_action :set_p_controlprogramtype, only: [:show, :edit, :update, :destroy]

  # GET /p_controlprogramtypes
  # GET /p_controlprogramtypes.json
  def index
    @p_controlprogramtypes = PControlprogramtype.all
  end

  # GET /p_controlprogramtypes/1
  # GET /p_controlprogramtypes/1.json
  def show
  end

  # GET /p_controlprogramtypes/new
  def new
    @p_controlprogramtype = PControlprogramtype.new
  end

  # GET /p_controlprogramtypes/1/edit
  def edit
  end

  # POST /p_controlprogramtypes
  # POST /p_controlprogramtypes.json
  def create
    @p_controlprogramtype = PControlprogramtype.new(p_controlprogramtype_params)

    respond_to do |format|
      if @p_controlprogramtype.save
        format.html { redirect_to @p_controlprogramtype, notice: 'P controlprogramtype was successfully created.' }
        format.json { render :show, status: :created, location: @p_controlprogramtype }
      else
        format.html { render :new }
        format.json { render json: @p_controlprogramtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_controlprogramtypes/1
  # PATCH/PUT /p_controlprogramtypes/1.json
  def update
    respond_to do |format|
      if @p_controlprogramtype.update(p_controlprogramtype_params)
        format.html { redirect_to @p_controlprogramtype, notice: 'P controlprogramtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_controlprogramtype }
      else
        format.html { render :edit }
        format.json { render json: @p_controlprogramtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_controlprogramtypes/1
  # DELETE /p_controlprogramtypes/1.json
  def destroy
    @p_controlprogramtype.destroy
    respond_to do |format|
      format.html { redirect_to p_controlprogramtypes_url, notice: 'P controlprogramtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_controlprogramtype
      @p_controlprogramtype = PControlprogramtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_controlprogramtype_params
      params.require(:p_controlprogramtype).permit(:ep_controlprogram_id, :v_typeactiveperiod_id)
    end
end
