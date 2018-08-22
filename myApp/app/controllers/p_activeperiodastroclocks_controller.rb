class PActiveperiodastroclocksController < ApplicationController
  before_action :set_p_activeperiodastroclock, only: [:show, :edit, :update, :destroy]

  # GET /p_activeperiodastroclocks
  # GET /p_activeperiodastroclocks.json
  def index
    @p_activeperiodastroclocks = PActiveperiodastroclock.all
  end

  # GET /p_activeperiodastroclocks/1
  # GET /p_activeperiodastroclocks/1.json
  def show
  end

  # GET /p_activeperiodastroclocks/new
  def new
    @p_activeperiodastroclock = PActiveperiodastroclock.new
  end

  # GET /p_activeperiodastroclocks/1/edit
  def edit
  end

  # POST /p_activeperiodastroclocks
  # POST /p_activeperiodastroclocks.json
  def create
    @p_activeperiodastroclock = PActiveperiodastroclock.new(p_activeperiodastroclock_params)

    respond_to do |format|
      if @p_activeperiodastroclock.save
        format.html { redirect_to @p_activeperiodastroclock, notice: 'P activeperiodastroclock was successfully created.' }
        format.json { render :show, status: :created, location: @p_activeperiodastroclock }
      else
        format.html { render :new }
        format.json { render json: @p_activeperiodastroclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_activeperiodastroclocks/1
  # PATCH/PUT /p_activeperiodastroclocks/1.json
  def update
    respond_to do |format|
      if @p_activeperiodastroclock.update(p_activeperiodastroclock_params)
        format.html { redirect_to @p_activeperiodastroclock, notice: 'P activeperiodastroclock was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_activeperiodastroclock }
      else
        format.html { render :edit }
        format.json { render json: @p_activeperiodastroclock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_activeperiodastroclocks/1
  # DELETE /p_activeperiodastroclocks/1.json
  def destroy
    @p_activeperiodastroclock.destroy
    respond_to do |format|
      format.html { redirect_to p_activeperiodastroclocks_url, notice: 'P activeperiodastroclock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_activeperiodastroclock
      @p_activeperiodastroclock = PActiveperiodastroclock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_activeperiodastroclock_params
      params.require(:p_activeperiodastroclock).permit(:sunset_offset, :sunrise_offset, :ep_controlprogram_id)
    end
end
