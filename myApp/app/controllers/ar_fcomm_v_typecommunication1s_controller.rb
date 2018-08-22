class ArFcommVTypecommunication1sController < ApplicationController
  before_action :set_ar_fcomm_v_typecommunication1, only: [:show, :edit, :update, :destroy]

  # GET /ar_fcomm_v_typecommunication1s
  # GET /ar_fcomm_v_typecommunication1s.json
  def index
    @ar_fcomm_v_typecommunication1s = ArFcommVTypecommunication1.all
  end

  # GET /ar_fcomm_v_typecommunication1s/1
  # GET /ar_fcomm_v_typecommunication1s/1.json
  def show
  end

  # GET /ar_fcomm_v_typecommunication1s/new
  def new
    @ar_fcomm_v_typecommunication1 = ArFcommVTypecommunication1.new
  end

  # GET /ar_fcomm_v_typecommunication1s/1/edit
  def edit
  end

  # POST /ar_fcomm_v_typecommunication1s
  # POST /ar_fcomm_v_typecommunication1s.json
  def create
    @ar_fcomm_v_typecommunication1 = ArFcommVTypecommunication1.new(ar_fcomm_v_typecommunication1_params)

    respond_to do |format|
      if @ar_fcomm_v_typecommunication1.save
        format.html { redirect_to @ar_fcomm_v_typecommunication1, notice: 'Ar fcomm v typecommunication1 was successfully created.' }
        format.json { render :show, status: :created, location: @ar_fcomm_v_typecommunication1 }
      else
        format.html { render :new }
        format.json { render json: @ar_fcomm_v_typecommunication1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_fcomm_v_typecommunication1s/1
  # PATCH/PUT /ar_fcomm_v_typecommunication1s/1.json
  def update
    respond_to do |format|
      if @ar_fcomm_v_typecommunication1.update(ar_fcomm_v_typecommunication1_params)
        format.html { redirect_to @ar_fcomm_v_typecommunication1, notice: 'Ar fcomm v typecommunication1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_fcomm_v_typecommunication1 }
      else
        format.html { render :edit }
        format.json { render json: @ar_fcomm_v_typecommunication1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_fcomm_v_typecommunication1s/1
  # DELETE /ar_fcomm_v_typecommunication1s/1.json
  def destroy
    @ar_fcomm_v_typecommunication1.destroy
    respond_to do |format|
      format.html { redirect_to ar_fcomm_v_typecommunication1s_url, notice: 'Ar fcomm v typecommunication1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_fcomm_v_typecommunication1
      @ar_fcomm_v_typecommunication1 = ArFcommVTypecommunication1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_fcomm_v_typecommunication1_params
      params.require(:ar_fcomm_v_typecommunication1).permit(:f_communication_id, :v_typecommunication_id)
    end
end
