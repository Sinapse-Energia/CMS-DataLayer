class EdLogicaldevsVActionsController < ApplicationController
  before_action :set_ed_logicaldevs_v_action, only: [:show, :edit, :update, :destroy]

  # GET /ed_logicaldevs_v_actions
  # GET /ed_logicaldevs_v_actions.json
  def index
    @ed_logicaldevs_v_actions = EdLogicaldevsVAction.all
  end

  # GET /ed_logicaldevs_v_actions/1
  # GET /ed_logicaldevs_v_actions/1.json
  def show
  end

  # GET /ed_logicaldevs_v_actions/new
  def new
    @ed_logicaldevs_v_action = EdLogicaldevsVAction.new
  end

  # GET /ed_logicaldevs_v_actions/1/edit
  def edit
  end

  # POST /ed_logicaldevs_v_actions
  # POST /ed_logicaldevs_v_actions.json
  def create
    @ed_logicaldevs_v_action = EdLogicaldevsVAction.new(ed_logicaldevs_v_action_params)

    respond_to do |format|
      if @ed_logicaldevs_v_action.save
        format.html { redirect_to @ed_logicaldevs_v_action, notice: 'Ed logicaldevs v action was successfully created.' }
        format.json { render :show, status: :created, location: @ed_logicaldevs_v_action }
      else
        format.html { render :new }
        format.json { render json: @ed_logicaldevs_v_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ed_logicaldevs_v_actions/1
  # PATCH/PUT /ed_logicaldevs_v_actions/1.json
  def update
    respond_to do |format|
      if @ed_logicaldevs_v_action.update(ed_logicaldevs_v_action_params)
        format.html { redirect_to @ed_logicaldevs_v_action, notice: 'Ed logicaldevs v action was successfully updated.' }
        format.json { render :show, status: :ok, location: @ed_logicaldevs_v_action }
      else
        format.html { render :edit }
        format.json { render json: @ed_logicaldevs_v_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ed_logicaldevs_v_actions/1
  # DELETE /ed_logicaldevs_v_actions/1.json
  def destroy
    @ed_logicaldevs_v_action.destroy
    respond_to do |format|
      format.html { redirect_to ed_logicaldevs_v_actions_url, notice: 'Ed logicaldevs v action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ed_logicaldevs_v_action
      @ed_logicaldevs_v_action = EdLogicaldevsVAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ed_logicaldevs_v_action_params
      params.require(:ed_logicaldevs_v_action).permit(:ed_logicaldev_id, :v_action_id)
    end
end
