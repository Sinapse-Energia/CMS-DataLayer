class PDynamicoperationsController < ApplicationController
  before_action :set_p_dynamicoperation, only: [:show, :edit, :update, :destroy]

  # GET /p_dynamicoperations
  # GET /p_dynamicoperations.json
  def index
    @p_dynamicoperations = PDynamicoperation.all
  end

  # GET /p_dynamicoperations/1
  # GET /p_dynamicoperations/1.json
  def show
  end

  # GET /p_dynamicoperations/new
  def new
    @p_dynamicoperation = PDynamicoperation.new
  end

  # GET /p_dynamicoperations/1/edit
  def edit
  end

  # POST /p_dynamicoperations
  # POST /p_dynamicoperations.json
  def create
    @p_dynamicoperation = PDynamicoperation.new(p_dynamicoperation_params)

    respond_to do |format|
      if @p_dynamicoperation.save
        format.html { redirect_to @p_dynamicoperation, notice: 'P dynamicoperation was successfully created.' }
        format.json { render :show, status: :created, location: @p_dynamicoperation }
      else
        format.html { render :new }
        format.json { render json: @p_dynamicoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_dynamicoperations/1
  # PATCH/PUT /p_dynamicoperations/1.json
  def update
    respond_to do |format|
      if @p_dynamicoperation.update(p_dynamicoperation_params)
        format.html { redirect_to @p_dynamicoperation, notice: 'P dynamicoperation was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_dynamicoperation }
      else
        format.html { render :edit }
        format.json { render json: @p_dynamicoperation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_dynamicoperations/1
  # DELETE /p_dynamicoperations/1.json
  def destroy
    @p_dynamicoperation.destroy
    respond_to do |format|
      format.html { redirect_to p_dynamicoperations_url, notice: 'P dynamicoperation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_dynamicoperation
      @p_dynamicoperation = PDynamicoperation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_dynamicoperation_params
      params.require(:p_dynamicoperation).permit(:set, :v_dynamicoperation_id)
    end
end
