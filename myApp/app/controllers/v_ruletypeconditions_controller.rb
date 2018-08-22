class VRuletypeconditionsController < ApplicationController
  before_action :set_v_ruletypecondition, only: [:show, :edit, :update, :destroy]

  # GET /v_ruletypeconditions
  # GET /v_ruletypeconditions.json
  def index
    @v_ruletypeconditions = VRuletypecondition.all
  end

  # GET /v_ruletypeconditions/1
  # GET /v_ruletypeconditions/1.json
  def show
  end

  # GET /v_ruletypeconditions/new
  def new
    @v_ruletypecondition = VRuletypecondition.new
  end

  # GET /v_ruletypeconditions/1/edit
  def edit
  end

  # POST /v_ruletypeconditions
  # POST /v_ruletypeconditions.json
  def create
    @v_ruletypecondition = VRuletypecondition.new(v_ruletypecondition_params)

    respond_to do |format|
      if @v_ruletypecondition.save
        format.html { redirect_to @v_ruletypecondition, notice: 'V ruletypecondition was successfully created.' }
        format.json { render :show, status: :created, location: @v_ruletypecondition }
      else
        format.html { render :new }
        format.json { render json: @v_ruletypecondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_ruletypeconditions/1
  # PATCH/PUT /v_ruletypeconditions/1.json
  def update
    respond_to do |format|
      if @v_ruletypecondition.update(v_ruletypecondition_params)
        format.html { redirect_to @v_ruletypecondition, notice: 'V ruletypecondition was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_ruletypecondition }
      else
        format.html { render :edit }
        format.json { render json: @v_ruletypecondition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_ruletypeconditions/1
  # DELETE /v_ruletypeconditions/1.json
  def destroy
    @v_ruletypecondition.destroy
    respond_to do |format|
      format.html { redirect_to v_ruletypeconditions_url, notice: 'V ruletypecondition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_ruletypecondition
      @v_ruletypecondition = VRuletypecondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_ruletypecondition_params
      params.require(:v_ruletypecondition).permit(:name)
    end
end
