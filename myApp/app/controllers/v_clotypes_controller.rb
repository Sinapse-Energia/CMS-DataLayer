class VClotypesController < ApplicationController
  before_action :set_v_clotype, only: [:show, :edit, :update, :destroy]

  # GET /v_clotypes
  # GET /v_clotypes.json
  def index
    @v_clotypes = VClotype.all
  end

  # GET /v_clotypes/1
  # GET /v_clotypes/1.json
  def show
  end

  # GET /v_clotypes/new
  def new
    @v_clotype = VClotype.new
  end

  # GET /v_clotypes/1/edit
  def edit
  end

  # POST /v_clotypes
  # POST /v_clotypes.json
  def create
    @v_clotype = VClotype.new(v_clotype_params)

    respond_to do |format|
      if @v_clotype.save
        format.html { redirect_to @v_clotype, notice: 'V clotype was successfully created.' }
        format.json { render :show, status: :created, location: @v_clotype }
      else
        format.html { render :new }
        format.json { render json: @v_clotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_clotypes/1
  # PATCH/PUT /v_clotypes/1.json
  def update
    respond_to do |format|
      if @v_clotype.update(v_clotype_params)
        format.html { redirect_to @v_clotype, notice: 'V clotype was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_clotype }
      else
        format.html { render :edit }
        format.json { render json: @v_clotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_clotypes/1
  # DELETE /v_clotypes/1.json
  def destroy
    @v_clotype.destroy
    respond_to do |format|
      format.html { redirect_to v_clotypes_url, notice: 'V clotype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_clotype
      @v_clotype = VClotype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_clotype_params
      params.require(:v_clotype).permit(:name)
    end
end
