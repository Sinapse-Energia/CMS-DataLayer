class PActiveperiodabsolutesController < ApplicationController
  before_action :set_p_activeperiodabsolute, only: [:show, :edit, :update, :destroy]

  # GET /p_activeperiodabsolutes
  # GET /p_activeperiodabsolutes.json
  def index
    @p_activeperiodabsolutes = PActiveperiodabsolute.all
  end

  # GET /p_activeperiodabsolutes/1
  # GET /p_activeperiodabsolutes/1.json
  def show
  end

  # GET /p_activeperiodabsolutes/new
  def new
    @p_activeperiodabsolute = PActiveperiodabsolute.new
  end

  # GET /p_activeperiodabsolutes/1/edit
  def edit
  end

  # POST /p_activeperiodabsolutes
  # POST /p_activeperiodabsolutes.json
  def create
    @p_activeperiodabsolute = PActiveperiodabsolute.new(p_activeperiodabsolute_params)

    respond_to do |format|
      if @p_activeperiodabsolute.save
        format.html { redirect_to @p_activeperiodabsolute, notice: 'P activeperiodabsolute was successfully created.' }
        format.json { render :show, status: :created, location: @p_activeperiodabsolute }
      else
        format.html { render :new }
        format.json { render json: @p_activeperiodabsolute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_activeperiodabsolutes/1
  # PATCH/PUT /p_activeperiodabsolutes/1.json
  def update
    respond_to do |format|
      if @p_activeperiodabsolute.update(p_activeperiodabsolute_params)
        format.html { redirect_to @p_activeperiodabsolute, notice: 'P activeperiodabsolute was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_activeperiodabsolute }
      else
        format.html { render :edit }
        format.json { render json: @p_activeperiodabsolute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_activeperiodabsolutes/1
  # DELETE /p_activeperiodabsolutes/1.json
  def destroy
    @p_activeperiodabsolute.destroy
    respond_to do |format|
      format.html { redirect_to p_activeperiodabsolutes_url, notice: 'P activeperiodabsolute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_activeperiodabsolute
      @p_activeperiodabsolute = PActiveperiodabsolute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_activeperiodabsolute_params
      params.require(:p_activeperiodabsolute).permit(:start_time, :end_time, :ep_controlprogram_id)
    end
end
