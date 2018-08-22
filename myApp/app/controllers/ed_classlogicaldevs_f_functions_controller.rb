class EdClasslogicaldevsFFunctionsController < ApplicationController
  before_action :set_ed_classlogicaldevs_f_function, only: [:show, :edit, :update, :destroy]

  # GET /ed_classlogicaldevs_f_functions
  # GET /ed_classlogicaldevs_f_functions.json
  def index
    @ed_classlogicaldevs_f_functions = EdClasslogicaldevsFFunction.all
  end

  # GET /ed_classlogicaldevs_f_functions/1
  # GET /ed_classlogicaldevs_f_functions/1.json
  def show
  end

  # GET /ed_classlogicaldevs_f_functions/new
  def new
    @ed_classlogicaldevs_f_function = EdClasslogicaldevsFFunction.new
  end

  # GET /ed_classlogicaldevs_f_functions/1/edit
  def edit
  end

  # POST /ed_classlogicaldevs_f_functions
  # POST /ed_classlogicaldevs_f_functions.json
  def create
    @ed_classlogicaldevs_f_function = EdClasslogicaldevsFFunction.new(ed_classlogicaldevs_f_function_params)

    respond_to do |format|
      if @ed_classlogicaldevs_f_function.save
        format.html { redirect_to @ed_classlogicaldevs_f_function, notice: 'Ed classlogicaldevs f function was successfully created.' }
        format.json { render :show, status: :created, location: @ed_classlogicaldevs_f_function }
      else
        format.html { render :new }
        format.json { render json: @ed_classlogicaldevs_f_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_classlogicaldevs_f_functions/1
  # PATCH/PUT /ed_classlogicaldevs_f_functions/1.json
  def update
    respond_to do |format|
      if @ed_classlogicaldevs_f_function.update(ed_classlogicaldevs_f_function_params)
        format.html { redirect_to @ed_classlogicaldevs_f_function, notice: 'Ed classlogicaldevs f function was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_classlogicaldevs_f_function }
      else
        format.html { render :edit }
        format.json { render json: @ed_classlogicaldevs_f_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_classlogicaldevs_f_functions/1
  # DELETE /ed_classlogicaldevs_f_functions/1.json
  def destroy
    @ed_classlogicaldevs_f_function.destroy
    respond_to do |format|
      format.html { redirect_to ed_classlogicaldevs_f_functions_url, notice: 'Ed classlogicaldevs f function was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_classlogicaldevs_f_function
      @ed_classlogicaldevs_f_function = EdClasslogicaldevsFFunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_classlogicaldevs_f_function_params
      params.require(:ed_classlogicaldevs_f_function).permit(:ed_classlogicaldev_id, :f_function_id)
    end
end
