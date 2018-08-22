class VTypeexecutionsController < ApplicationController
  before_action :set_v_typeexecution, only: [:show, :edit, :update, :destroy]

  # GET /v_typeexecutions
  # GET /v_typeexecutions.json
  def index
    @v_typeexecutions = VTypeexecution.all
  end

  # GET /v_typeexecutions/1
  # GET /v_typeexecutions/1.json
  def show
  end

  # GET /v_typeexecutions/new
  def new
    @v_typeexecution = VTypeexecution.new
  end

  # GET /v_typeexecutions/1/edit
  def edit
  end

  # POST /v_typeexecutions
  # POST /v_typeexecutions.json
  def create
    @v_typeexecution = VTypeexecution.new(v_typeexecution_params)

    respond_to do |format|
      if @v_typeexecution.save
        format.html { redirect_to @v_typeexecution, notice: 'V typeexecution was successfully created.' }
        format.json { render :show, status: :created, location: @v_typeexecution }
      else
        format.html { render :new }
        format.json { render json: @v_typeexecution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typeexecutions/1
  # PATCH/PUT /v_typeexecutions/1.json
  def update
    respond_to do |format|
      if @v_typeexecution.update(v_typeexecution_params)
        format.html { redirect_to @v_typeexecution, notice: 'V typeexecution was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typeexecution }
      else
        format.html { render :edit }
        format.json { render json: @v_typeexecution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typeexecutions/1
  # DELETE /v_typeexecutions/1.json
  def destroy
    @v_typeexecution.destroy
    respond_to do |format|
      format.html { redirect_to v_typeexecutions_url, notice: 'V typeexecution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typeexecution
      @v_typeexecution = VTypeexecution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typeexecution_params
      params.require(:v_typeexecution).permit(:description)
    end
end
