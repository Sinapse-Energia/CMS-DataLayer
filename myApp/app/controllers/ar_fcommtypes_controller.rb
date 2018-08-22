class ArFcommtypesController < ApplicationController
  before_action :set_ar_fcommtype, only: [:show, :edit, :update, :destroy]

  # GET /ar_fcommtypes
  # GET /ar_fcommtypes.json
  def index
    @ar_fcommtypes = ArFcommtype.all
  end

  # GET /ar_fcommtypes/1
  # GET /ar_fcommtypes/1.json
  def show
  end

  # GET /ar_fcommtypes/new
  def new
    @ar_fcommtype = ArFcommtype.new
  end

  # GET /ar_fcommtypes/1/edit
  def edit
  end

  # POST /ar_fcommtypes
  # POST /ar_fcommtypes.json
  def create
    @ar_fcommtype = ArFcommtype.new(ar_fcommtype_params)

    respond_to do |format|
      if @ar_fcommtype.save
        format.html { redirect_to @ar_fcommtype, notice: 'Ar fcommtype was successfully created.' }
        format.json { render :show, status: :created, location: @ar_fcommtype }
      else
        format.html { render :new }
        format.json { render json: @ar_fcommtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_fcommtypes/1
  # PATCH/PUT /ar_fcommtypes/1.json
  def update
    respond_to do |format|
      if @ar_fcommtype.update(ar_fcommtype_params)
        format.html { redirect_to @ar_fcommtype, notice: 'Ar fcommtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_fcommtype }
      else
        format.html { render :edit }
        format.json { render json: @ar_fcommtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_fcommtypes/1
  # DELETE /ar_fcommtypes/1.json
  def destroy
    @ar_fcommtype.destroy
    respond_to do |format|
      format.html { redirect_to ar_fcommtypes_url, notice: 'Ar fcommtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_fcommtype
      @ar_fcommtype = ArFcommtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_fcommtype_params
      params.require(:ar_fcommtype).permit(:f_communication_id, :v_typecommunication_id)
    end
end
