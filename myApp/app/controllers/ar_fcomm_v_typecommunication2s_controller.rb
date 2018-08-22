class ArFcommVTypecommunication2sController < ApplicationController
  before_action :set_ar_fcomm_v_typecommunication2, only: [:show, :edit, :update, :destroy]

  # GET /ar_fcomm_v_typecommunication2s
  # GET /ar_fcomm_v_typecommunication2s.json
  def index
    @ar_fcomm_v_typecommunication2s = ArFcommVTypecommunication2.all
  end

  # GET /ar_fcomm_v_typecommunication2s/1
  # GET /ar_fcomm_v_typecommunication2s/1.json
  def show
  end

  # GET /ar_fcomm_v_typecommunication2s/new
  def new
    @ar_fcomm_v_typecommunication2 = ArFcommVTypecommunication2.new
  end

  # GET /ar_fcomm_v_typecommunication2s/1/edit
  def edit
  end

  # POST /ar_fcomm_v_typecommunication2s
  # POST /ar_fcomm_v_typecommunication2s.json
  def create
    @ar_fcomm_v_typecommunication2 = ArFcommVTypecommunication2.new(ar_fcomm_v_typecommunication2_params)

    respond_to do |format|
      if @ar_fcomm_v_typecommunication2.save
        format.html { redirect_to @ar_fcomm_v_typecommunication2, notice: 'Ar fcomm v typecommunication2 was successfully created.' }
        format.json { render :show, status: :created, location: @ar_fcomm_v_typecommunication2 }
      else
        format.html { render :new }
        format.json { render json: @ar_fcomm_v_typecommunication2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_fcomm_v_typecommunication2s/1
  # PATCH/PUT /ar_fcomm_v_typecommunication2s/1.json
  def update
    respond_to do |format|
      if @ar_fcomm_v_typecommunication2.update(ar_fcomm_v_typecommunication2_params)
        format.html { redirect_to @ar_fcomm_v_typecommunication2, notice: 'Ar fcomm v typecommunication2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_fcomm_v_typecommunication2 }
      else
        format.html { render :edit }
        format.json { render json: @ar_fcomm_v_typecommunication2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_fcomm_v_typecommunication2s/1
  # DELETE /ar_fcomm_v_typecommunication2s/1.json
  def destroy
    @ar_fcomm_v_typecommunication2.destroy
    respond_to do |format|
      format.html { redirect_to ar_fcomm_v_typecommunication2s_url, notice: 'Ar fcomm v typecommunication2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_fcomm_v_typecommunication2
      @ar_fcomm_v_typecommunication2 = ArFcommVTypecommunication2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_fcomm_v_typecommunication2_params
      params.require(:ar_fcomm_v_typecommunication2).permit(:f_communication_id, :v_typecommunication_id)
    end
end
