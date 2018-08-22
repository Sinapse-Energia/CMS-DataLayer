class CRulesconditionsController < ApplicationController
  before_action :set_c_rulescondition, only: [:show, :edit, :update, :destroy]

  # GET /c_rulesconditions
  # GET /c_rulesconditions.json
  def index
    @c_rulesconditions = CRulescondition.all
  end

  # GET /c_rulesconditions/1
  # GET /c_rulesconditions/1.json
  def show
  end

  # GET /c_rulesconditions/new
  def new
    @c_rulescondition = CRulescondition.new
  end

  # GET /c_rulesconditions/1/edit
  def edit
  end

  # POST /c_rulesconditions
  # POST /c_rulesconditions.json
  def create
    @c_rulescondition = CRulescondition.new(c_rulescondition_params)

    respond_to do |format|
      if @c_rulescondition.save
        format.html { redirect_to @c_rulescondition, notice: 'C rulescondition was successfully created.' }
        format.json { render :show, status: :created, location: @c_rulescondition }
      else
        format.html { render :new }
        format.json { render json: @c_rulescondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /c_rulesconditions/1
  # PATCH/PUT /c_rulesconditions/1.json
  def update
    respond_to do |format|
      if @c_rulescondition.update(c_rulescondition_params)
        format.html { redirect_to @c_rulescondition, notice: 'C rulescondition was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_rulescondition }
      else
        format.html { render :edit }
        format.json { render json: @c_rulescondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_rulesconditions/1
  # DELETE /c_rulesconditions/1.json
  def destroy
    @c_rulescondition.destroy
    respond_to do |format|
      format.html { redirect_to c_rulesconditions_url, notice: 'C rulescondition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_rulescondition
      @c_rulescondition = CRulescondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_rulescondition_params
      params.require(:c_rulescondition).permit(:v_ruletypecondition_id, :c_calendarrule_id)
    end
end
