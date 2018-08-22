class EgGroupsController < ApplicationController
  before_action :set_eg_group, only: [:show, :edit, :update, :destroy]

  # GET /eg_groups
  # GET /eg_groups.json
  def index
    @eg_groups = EgGroup.all
  end

  # GET /eg_groups/1
  # GET /eg_groups/1.json
  def show
  end

  # GET /eg_groups/new
  def new
    @eg_group = EgGroup.new
  end

  # GET /eg_groups/1/edit
  def edit
  end

  # POST /eg_groups
  # POST /eg_groups.json
  def create
    @eg_group = EgGroup.new(eg_group_params)

    respond_to do |format|
      if @eg_group.save
        format.html { redirect_to @eg_group, notice: 'Eg group was successfully created.' }
        format.json { render :show, status: :created, location: @eg_group }
      else
        format.html { render :new }
        format.json { render json: @eg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eg_groups/1
  # PATCH/PUT /eg_groups/1.json
  def update
    respond_to do |format|
      if @eg_group.update(eg_group_params)
        format.html { redirect_to @eg_group, notice: 'Eg group was successfully updated.' }
        format.json { render :show, status: :ok, location: @eg_group }
      else
        format.html { render :edit }
        format.json { render json: @eg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eg_groups/1
  # DELETE /eg_groups/1.json
  def destroy
    @eg_group.destroy
    respond_to do |format|
      format.html { redirect_to eg_groups_url, notice: 'Eg group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eg_group
      @eg_group = EgGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eg_group_params
      params.require(:eg_group).permit(:address, :v_purpose_id)
    end
end
