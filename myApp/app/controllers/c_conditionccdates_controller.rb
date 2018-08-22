class CConditionccdatesController < ApplicationController
  before_action :set_c_conditionccdate, only: [:show, :edit, :update, :destroy]

  # GET /c_conditionccdates
  # GET /c_conditionccdates.json
  def index
    @c_conditionccdates = CConditionccdate.all
  end

  # GET /c_conditionccdates/1
  # GET /c_conditionccdates/1.json
  def show
  end

  # GET /c_conditionccdates/new
  def new
    @c_conditionccdate = CConditionccdate.new
  end

  # GET /c_conditionccdates/1/edit
  def edit
  end

  # POST /c_conditionccdates
  # POST /c_conditionccdates.json
  def create
    @c_conditionccdate = CConditionccdate.new(c_conditionccdate_params)

    respond_to do |format|
      if @c_conditionccdate.save
        format.html { redirect_to @c_conditionccdate, notice: 'C conditionccdate was successfully created.' }
        format.json { render :show, status: :created, location: @c_conditionccdate }
      else
        format.html { render :new }
        format.json { render json: @c_conditionccdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_conditionccdates/1
  # PATCH/PUT /c_conditionccdates/1.json
  def update
    respond_to do |format|
      if @c_conditionccdate.update(c_conditionccdate_params)
        format.html { redirect_to @c_conditionccdate, notice: 'C conditionccdate was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_conditionccdate }
      else
        format.html { render :edit }
        format.json { render json: @c_conditionccdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_conditionccdates/1
  # DELETE /c_conditionccdates/1.json
  def destroy
    @c_conditionccdate.destroy
    respond_to do |format|
      format.html { redirect_to c_conditionccdates_url, notice: 'C conditionccdate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_conditionccdate
      @c_conditionccdate = CConditionccdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_conditionccdate_params
      params.require(:c_conditionccdate).permit(:c_start, :c_end, :c_rulescondition_id)
    end
end
