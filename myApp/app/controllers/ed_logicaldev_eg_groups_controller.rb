class EdLogicaldevEgGroupsController < ApplicationController
  before_action :set_ed_logicaldev_eg_group, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldev_eg_groups
  # GET /ed_logicaldev_eg_groups.json
  def index
    @ed_logicaldev_eg_groups = EdLogicaldevEgGroup.all
  end

  # GET /ed_logicaldev_eg_groups/1
  # GET /ed_logicaldev_eg_groups/1.json
  def show
  end

  # GET /ed_logicaldev_eg_groups/new
  def new
    @ed_logicaldev_eg_group = EdLogicaldevEgGroup.new
  end

  # GET /ed_logicaldev_eg_groups/1/edit
  def edit
  end

  # POST /ed_logicaldev_eg_groups
  # POST /ed_logicaldev_eg_groups.json
  def create
    @ed_logicaldev_eg_group = EdLogicaldevEgGroup.new(ed_logicaldev_eg_group_params)

    respond_to do |format|
      if @ed_logicaldev_eg_group.save
        format.html { redirect_to @ed_logicaldev_eg_group, notice: 'Ed logicaldev eg group was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldev_eg_group }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldev_eg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldev_eg_groups/1
  # PATCH/PUT /ed_logicaldev_eg_groups/1.json
  def update
    respond_to do |format|
      if @ed_logicaldev_eg_group.update(ed_logicaldev_eg_group_params)
        format.html { redirect_to @ed_logicaldev_eg_group, notice: 'Ed logicaldev eg group was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldev_eg_group }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldev_eg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldev_eg_groups/1
  # DELETE /ed_logicaldev_eg_groups/1.json
  def destroy
    @ed_logicaldev_eg_group.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldev_eg_groups_url, notice: 'Ed logicaldev eg group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldev_eg_group
      @ed_logicaldev_eg_group = EdLogicaldevEgGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldev_eg_group_params
      params.require(:ed_logicaldev_eg_group).permit(:ed_logicaldev_id, :eg_group_id)
    end
end
