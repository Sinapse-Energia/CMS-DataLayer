class AdescFlampactuatorsController < ApplicationController
  before_action :set_adesc_flampactuator, only: [:show, :edit, :update, :destroy]

  # GET /adesc_flampactuators
  # GET /adesc_flampactuators.json
  def index
    @adesc_flampactuators = AdescFlampactuator.all
  end

  # GET /adesc_flampactuators/1
  # GET /adesc_flampactuators/1.json
  def show
  end

  # GET /adesc_flampactuators/new
  def new
    @adesc_flampactuator = AdescFlampactuator.new
  end

  # GET /adesc_flampactuators/1/edit
  def edit
  end

  # POST /adesc_flampactuators
  # POST /adesc_flampactuators.json
  def create
    @adesc_flampactuator = AdescFlampactuator.new(adesc_flampactuator_params)

    respond_to do |format|
      if @adesc_flampactuator.save
        format.html { redirect_to @adesc_flampactuator, notice: 'Adesc flampactuator was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_flampactuator }
      else
        format.html { render :new }
        format.json { render json: @adesc_flampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_flampactuators/1
  # PATCH/PUT /adesc_flampactuators/1.json
  def update
    respond_to do |format|
      if @adesc_flampactuator.update(adesc_flampactuator_params)
        format.html { redirect_to @adesc_flampactuator, notice: 'Adesc flampactuator was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_flampactuator }
      else
        format.html { render :edit }
        format.json { render json: @adesc_flampactuator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_flampactuators/1
  # DELETE /adesc_flampactuators/1.json
  def destroy
    @adesc_flampactuator.destroy
    respond_to do |format|
      format.html { redirect_to adesc_flampactuators_url, notice: 'Adesc flampactuator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_flampactuator
      @adesc_flampactuator = AdescFlampactuator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_flampactuator_params
      params.require(:adesc_flampactuator).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
