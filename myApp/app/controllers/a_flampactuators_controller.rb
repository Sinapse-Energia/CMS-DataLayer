class AFlampactuatorsController < ApplicationController
  before_action :set_a_flampactuator, only: [:show, :edit, :update, :destroy]

  # GET /a_flampactuators
  # GET /a_flampactuators.json
  def index
    @a_flampactuators = AFlampactuator.all
  end

  # GET /a_flampactuators/1
  # GET /a_flampactuators/1.json
  def show
  end

  # GET /a_flampactuators/new
  def new
    @a_flampactuator = AFlampactuator.new
  end

  # GET /a_flampactuators/1/edit
  def edit
  end

  # POST /a_flampactuators
  # POST /a_flampactuators.json
  def create
    @a_flampactuator = AFlampactuator.new(a_flampactuator_params)

    respond_to do |format|
      if @a_flampactuator.save
        format.html { redirect_to @a_flampactuator, notice: 'A flampactuator was successfully created.' }
        format.json { render :show, status: :created, location: @a_flampactuator }
      else
        format.html { render :new }
        format.json { render json: @a_flampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /a_flampactuators/1
  # PATCH/PUT /a_flampactuators/1.json
  def update
    respond_to do |format|
      if @a_flampactuator.update(a_flampactuator_params)
        format.html { redirect_to @a_flampactuator, notice: 'A flampactuator was successfully updated.' }
        format.json { render :show, status: :ok, location: @a_flampactuator }
      else
        format.html { render :edit }
        format.json { render json: @a_flampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /a_flampactuators/1
  # DELETE /a_flampactuators/1.json
  def destroy
    @a_flampactuator.destroy
    respond_to do |format|
      format.html { redirect_to a_flampactuators_url, notice: 'A flampactuator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a_flampactuator
      @a_flampactuator = AFlampactuator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_flampactuator_params
      params.require(:a_flampactuator).permit(:value, :seqbridge, :seqcms, :adesc_flampactuator_id, :f_lampactuator_id)
    end
end
