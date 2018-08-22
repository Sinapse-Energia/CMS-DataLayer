class AdescFlampmonitorsController < ApplicationController
  before_action :set_adesc_flampmonitor, only: [:show, :edit, :update, :destroy]

  # GET /adesc_flampmonitors
  # GET /adesc_flampmonitors.json
  def index
    @adesc_flampmonitors = AdescFlampmonitor.all
  end

  # GET /adesc_flampmonitors/1
  # GET /adesc_flampmonitors/1.json
  def show
  end

  # GET /adesc_flampmonitors/new
  def new
    @adesc_flampmonitor = AdescFlampmonitor.new
  end

  # GET /adesc_flampmonitors/1/edit
  def edit
  end

  # POST /adesc_flampmonitors
  # POST /adesc_flampmonitors.json
  def create
    @adesc_flampmonitor = AdescFlampmonitor.new(adesc_flampmonitor_params)

    respond_to do |format|
      if @adesc_flampmonitor.save
        format.html { redirect_to @adesc_flampmonitor, notice: 'Adesc flampmonitor was successfully created.' }
        format.json { render :show, status: :created, location: @adesc_flampmonitor }
      else
        format.html { render :new }
        format.json { render json: @adesc_flampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adesc_flampmonitors/1
  # PATCH/PUT /adesc_flampmonitors/1.json
  def update
    respond_to do |format|
      if @adesc_flampmonitor.update(adesc_flampmonitor_params)
        format.html { redirect_to @adesc_flampmonitor, notice: 'Adesc flampmonitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @adesc_flampmonitor }
      else
        format.html { render :edit }
        format.json { render json: @adesc_flampmonitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adesc_flampmonitors/1
  # DELETE /adesc_flampmonitors/1.json
  def destroy
    @adesc_flampmonitor.destroy
    respond_to do |format|
      format.html { redirect_to adesc_flampmonitors_url, notice: 'Adesc flampmonitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adesc_flampmonitor
      @adesc_flampmonitor = AdescFlampmonitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adesc_flampmonitor_params
      params.require(:adesc_flampmonitor).permit(:name, :v_storagetype_id, :unit, :minvalue, :maxvalue, :regex, :enumeration, :read_only, :maxinstances, :descr, :lightcommand)
    end
end
