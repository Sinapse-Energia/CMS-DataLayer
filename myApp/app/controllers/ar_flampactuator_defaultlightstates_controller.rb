class ArFlampactuatorDefaultlightstatesController < ApplicationController
  before_action :set_ar_flampactuator_defaultlightstate, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_defaultlightstates
  # GET /ar_flampactuator_defaultlightstates.json
  def index
    @ar_flampactuator_defaultlightstates = ArFlampactuatorDefaultlightstate.all
  end

  # GET /ar_flampactuator_defaultlightstates/1
  # GET /ar_flampactuator_defaultlightstates/1.json
  def show
  end

  # GET /ar_flampactuator_defaultlightstates/new
  def new
    @ar_flampactuator_defaultlightstate = ArFlampactuatorDefaultlightstate.new
  end

  # GET /ar_flampactuator_defaultlightstates/1/edit
  def edit
  end

  # POST /ar_flampactuator_defaultlightstates
  # POST /ar_flampactuator_defaultlightstates.json
  def create
    @ar_flampactuator_defaultlightstate = ArFlampactuatorDefaultlightstate.new(ar_flampactuator_defaultlightstate_params)

    respond_to do |format|
      if @ar_flampactuator_defaultlightstate.save
        format.html { redirect_to @ar_flampactuator_defaultlightstate, notice: 'Ar flampactuator defaultlightstate was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_defaultlightstate }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_defaultlightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_defaultlightstates/1
  # PATCH/PUT /ar_flampactuator_defaultlightstates/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_defaultlightstate.update(ar_flampactuator_defaultlightstate_params)
        format.html { redirect_to @ar_flampactuator_defaultlightstate, notice: 'Ar flampactuator defaultlightstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_defaultlightstate }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_defaultlightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_defaultlightstates/1
  # DELETE /ar_flampactuator_defaultlightstates/1.json
  def destroy
    @ar_flampactuator_defaultlightstate.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_defaultlightstates_url, notice: 'Ar flampactuator defaultlightstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_defaultlightstate
      @ar_flampactuator_defaultlightstate = ArFlampactuatorDefaultlightstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_defaultlightstate_params
      params.require(:ar_flampactuator_defaultlightstate).permit(:f_lampactuator_id, :l_lightstate_id)
    end
end
