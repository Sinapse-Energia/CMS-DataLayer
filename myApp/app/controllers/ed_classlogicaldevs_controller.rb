class EdClasslogicaldevsController < ApplicationController
  before_action :set_ed_classlogicaldev, only: [:show, :edit, :update, :destroy]

  # GET /ed_classlogicaldevs
  # GET /ed_classlogicaldevs.json
  def index
    @ed_classlogicaldevs = EdClasslogicaldev.all
  end

  # GET /ed_classlogicaldevs/1
  # GET /ed_classlogicaldevs/1.json
  def show
  end

  # GET /ed_classlogicaldevs/new
  def new
    @ed_classlogicaldev = EdClasslogicaldev.new
  end

  # GET /ed_classlogicaldevs/1/edit
  def edit
  end

  # POST /ed_classlogicaldevs
  # POST /ed_classlogicaldevs.json
  def create
    @ed_classlogicaldev = EdClasslogicaldev.new(ed_classlogicaldev_params)

    respond_to do |format|
      if @ed_classlogicaldev.save
        format.html { redirect_to @ed_classlogicaldev, notice: 'Ed classlogicaldev was successfully created.' }
        format.json { render :show, status: :created, location: @ed_classlogicaldev }
      else
        format.html { render :new }
        format.json { render json: @ed_classlogicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_classlogicaldevs/1
  # PATCH/PUT /ed_classlogicaldevs/1.json
  def update
    respond_to do |format|
      if @ed_classlogicaldev.update(ed_classlogicaldev_params)
        format.html { redirect_to @ed_classlogicaldev, notice: 'Ed classlogicaldev was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_classlogicaldev }
      else
        format.html { render :edit }
        format.json { render json: @ed_classlogicaldev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_classlogicaldevs/1
  # DELETE /ed_classlogicaldevs/1.json
  def destroy
    @ed_classlogicaldev.destroy
    respond_to do |format|
      format.html { redirect_to ed_classlogicaldevs_url, notice: 'Ed classlogicaldev was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_classlogicaldev
      @ed_classlogicaldev = EdClasslogicaldev.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_classlogicaldev_params
      params.require(:ed_classlogicaldev).permit(:name, :type_device, :address)
    end
end
