class EdLogicaldevSiPhysicaldevlampsController < ApplicationController
  before_action :set_ed_logicaldev_si_physicaldevlamp, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_si_physicaldevlamps
  # GET /ed_logicaldev_si_physicaldevlamps.json
  def index
    @ed_logicaldev_si_physicaldevlamps = EdLogicaldevSiPhysicaldevlamp.all
  end

  # GET /ed_logicaldev_si_physicaldevlamps/1
  # GET /ed_logicaldev_si_physicaldevlamps/1.json
  def show
  end

  # GET /ed_logicaldev_si_physicaldevlamps/new
  def new
    @ed_logicaldev_si_physicaldevlamp = EdLogicaldevSiPhysicaldevlamp.new
  end

  # GET /ed_logicaldev_si_physicaldevlamps/1/edit
  def edit
  end

  # POST /ed_logicaldev_si_physicaldevlamps
  # POST /ed_logicaldev_si_physicaldevlamps.json
  def create
    @ed_logicaldev_si_physicaldevlamp = EdLogicaldevSiPhysicaldevlamp.new(ed_logicaldev_si_physicaldevlamp_params)

    respond_to do |format|
      if @ed_logicaldev_si_physicaldevlamp.save
        format.html { redirect_to @ed_logicaldev_si_physicaldevlamp, notice: 'Ed logicaldev si physicaldevlamp was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_si_physicaldevlamp }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_si_physicaldevlamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_si_physicaldevlamps/1
  # PATCH/PUT /ed_logicaldev_si_physicaldevlamps/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_si_physicaldevlamp.update(ed_logicaldev_si_physicaldevlamp_params)
        format.html { redirect_to @ed_logicaldev_si_physicaldevlamp, notice: 'Ed logicaldev si physicaldevlamp was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_si_physicaldevlamp }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_si_physicaldevlamp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_si_physicaldevlamps/1
  # DELETE /ed_logicaldev_si_physicaldevlamps/1.json
  def destroy
    @ed_logicaldev_si_physicaldevlamp.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_si_physicaldevlamps_url, notice: 'Ed logicaldev si physicaldevlamp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_si_physicaldevlamp
      @ed_logicaldev_si_physicaldevlamp = EdLogicaldevSiPhysicaldevlamp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_si_physicaldevlamp_params
      params.require(:ed_logicaldev_si_physicaldevlamp).permit(:ed_logicaldev_id, :si_physicaldevlamp_id)
    end
end
