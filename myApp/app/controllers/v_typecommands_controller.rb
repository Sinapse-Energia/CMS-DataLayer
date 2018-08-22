class VTypecommandsController < ApplicationController
  before_action :set_v_typecommand, only: [:show, :edit, :update, :destroy]

  # GET /v_typecommands
  # GET /v_typecommands.json
  def index
    @v_typecommands = VTypecommand.all
  end

  # GET /v_typecommands/1
  # GET /v_typecommands/1.json
  def show
  end

  # GET /v_typecommands/new
  def new
    @v_typecommand = VTypecommand.new
  end

  # GET /v_typecommands/1/edit
  def edit
  end

  # POST /v_typecommands
  # POST /v_typecommands.json
  def create
    @v_typecommand = VTypecommand.new(v_typecommand_params)

    respond_to do |format|
      if @v_typecommand.save
        format.html { redirect_to @v_typecommand, notice: 'V typecommand was successfully created.' }
        format.json { render :show, status: :created, location: @v_typecommand }
      else
        format.html { render :new }
        format.json { render json: @v_typecommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typecommands/1
  # PATCH/PUT /v_typecommands/1.json
  def update
    respond_to do |format|
      if @v_typecommand.update(v_typecommand_params)
        format.html { redirect_to @v_typecommand, notice: 'V typecommand was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typecommand }
      else
        format.html { render :edit }
        format.json { render json: @v_typecommand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typecommands/1
  # DELETE /v_typecommands/1.json
  def destroy
    @v_typecommand.destroy
    respond_to do |format|
      format.html { redirect_to v_typecommands_url, notice: 'V typecommand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typecommand
      @v_typecommand = VTypecommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typecommand_params
      params.require(:v_typecommand).permit(:name, :short_name)
    end
end
