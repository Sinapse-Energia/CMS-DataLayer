class ArFlampactuatorActuallightstatesController < ApplicationController
  before_action :set_ar_flampactuator_actuallightstate, only: [:show, :edit, :update, :destroy]

  # GET /ar_flampactuator_actuallightstates
  # GET /ar_flampactuator_actuallightstates.json
  def index
    @ar_flampactuator_actuallightstates = ArFlampactuatorActuallightstate.all
  end

  # GET /ar_flampactuator_actuallightstates/1
  # GET /ar_flampactuator_actuallightstates/1.json
  def show
  end

  # GET /ar_flampactuator_actuallightstates/new
  def new
    @ar_flampactuator_actuallightstate = ArFlampactuatorActuallightstate.new
  end

  # GET /ar_flampactuator_actuallightstates/1/edit
  def edit
  end

  # POST /ar_flampactuator_actuallightstates
  # POST /ar_flampactuator_actuallightstates.json
  def create
    @ar_flampactuator_actuallightstate = ArFlampactuatorActuallightstate.new(ar_flampactuator_actuallightstate_params)

    respond_to do |format|
      if @ar_flampactuator_actuallightstate.save
        format.html { redirect_to @ar_flampactuator_actuallightstate, notice: 'Ar flampactuator actuallightstate was successfully created.' }
        format.json { render :show, status: :created, location: @ar_flampactuator_actuallightstate }
      else
        format.html { render :new }
        format.json { render json: @ar_flampactuator_actuallightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_flampactuator_actuallightstates/1
  # PATCH/PUT /ar_flampactuator_actuallightstates/1.json
  def update
    respond_to do |format|
      if @ar_flampactuator_actuallightstate.update(ar_flampactuator_actuallightstate_params)
        format.html { redirect_to @ar_flampactuator_actuallightstate, notice: 'Ar flampactuator actuallightstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_flampactuator_actuallightstate }
      else
        format.html { render :edit }
        format.json { render json: @ar_flampactuator_actuallightstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_flampactuator_actuallightstates/1
  # DELETE /ar_flampactuator_actuallightstates/1.json
  def destroy
    @ar_flampactuator_actuallightstate.destroy
    respond_to do |format|
      format.html { redirect_to ar_flampactuator_actuallightstates_url, notice: 'Ar flampactuator actuallightstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_flampactuator_actuallightstate
      @ar_flampactuator_actuallightstate = ArFlampactuatorActuallightstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_flampactuator_actuallightstate_params
      params.require(:ar_flampactuator_actuallightstate).permit(:f_lampactuator_id, :l_lightstate_id)
    end
end
