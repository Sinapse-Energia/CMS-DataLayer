class CConditionccdaysController < ApplicationController
  before_action :set_c_conditionccday, only: [:show, :edit, :update, :destroy]

  # GET /c_conditionccdays
  # GET /c_conditionccdays.json
  def index
    @c_conditionccdays = CConditionccday.all
  end

  # GET /c_conditionccdays/1
  # GET /c_conditionccdays/1.json
  def show
  end

  # GET /c_conditionccdays/new
  def new
    @c_conditionccday = CConditionccday.new
  end

  # GET /c_conditionccdays/1/edit
  def edit
  end

  # POST /c_conditionccdays
  # POST /c_conditionccdays.json
  def create
    @c_conditionccday = CConditionccday.new(c_conditionccday_params)

    respond_to do |format|
      if @c_conditionccday.save
        format.html { redirect_to @c_conditionccday, notice: 'C conditionccday was successfully created.' }
        format.json { render :show, status: :created, location: @c_conditionccday }
      else
        format.html { render :new }
        format.json { render json: @c_conditionccday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_conditionccdays/1
  # PATCH/PUT /c_conditionccdays/1.json
  def update
    respond_to do |format|
      if @c_conditionccday.update(c_conditionccday_params)
        format.html { redirect_to @c_conditionccday, notice: 'C conditionccday was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_conditionccday }
      else
        format.html { render :edit }
        format.json { render json: @c_conditionccday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_conditionccdays/1
  # DELETE /c_conditionccdays/1.json
  def destroy
    @c_conditionccday.destroy
    respond_to do |format|
      format.html { redirect_to c_conditionccdays_url, notice: 'C conditionccday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_conditionccday
      @c_conditionccday = CConditionccday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_conditionccday_params
      params.require(:c_conditionccday).permit(:c_start, :v_occurrence_id, :c_end, :c_rulescondition_id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
    end
end
