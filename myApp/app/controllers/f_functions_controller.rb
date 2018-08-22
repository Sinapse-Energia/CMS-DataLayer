class FFunctionsController < ApplicationController
  before_action :set_f_function, only: [:show, :edit, :update, :destroy]

  # GET /f_functions
  # GET /f_functions.json
  def index
    @f_functions = FFunction.all
  end

  # GET /f_functions/1
  # GET /f_functions/1.json
  def show
  end

  # GET /f_functions/new
  def new
    @f_function = FFunction.new
  end

  # GET /f_functions/1/edit
  def edit
  end

  # POST /f_functions
  # POST /f_functions.json
  def create
    @f_function = FFunction.new(f_function_params)

    respond_to do |format|
      if @f_function.save
        format.html { redirect_to @f_function, notice: 'F function was successfully created.' }
        format.json { render :show, status: :created, location: @f_function }
      else
        format.html { render :new }
        format.json { render json: @f_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_functions/1
  # PATCH/PUT /f_functions/1.json
  def update
    respond_to do |format|
      if @f_function.update(f_function_params)
        format.html { redirect_to @f_function, notice: 'F function was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_function }
      else
        format.html { render :edit }
        format.json { render json: @f_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_functions/1
  # DELETE /f_functions/1.json
  def destroy
    @f_function.destroy
    respond_to do |format|
      format.html { redirect_to f_functions_url, notice: 'F function was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_function
      @f_function = FFunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_function_params
      params.require(:f_function).permit(:name)
    end
end
