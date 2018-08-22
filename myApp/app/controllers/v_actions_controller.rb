class VActionsController < ApplicationController
  before_action :set_v_action, only: [:show, :edit, :update, :destroy]

  # GET /v_actions
  # GET /v_actions.json
  def index
    @v_actions = VAction.all
  end

  # GET /v_actions/1
  # GET /v_actions/1.json
  def show
  end

  # GET /v_actions/new
  def new
    @v_action = VAction.new
  end

  # GET /v_actions/1/edit
  def edit
  end

  # POST /v_actions
  # POST /v_actions.json
  def create
    @v_action = VAction.new(v_action_params)

    respond_to do |format|
      if @v_action.save
        format.html { redirect_to @v_action, notice: 'V action was successfully created.' }
        format.json { render :show, status: :created, location: @v_action }
      else
        format.html { render :new }
        format.json { render json: @v_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_actions/1
  # PATCH/PUT /v_actions/1.json
  def update
    respond_to do |format|
      if @v_action.update(v_action_params)
        format.html { redirect_to @v_action, notice: 'V action was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_action }
      else
        format.html { render :edit }
        format.json { render json: @v_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_actions/1
  # DELETE /v_actions/1.json
  def destroy
    @v_action.destroy
    respond_to do |format|
      format.html { redirect_to v_actions_url, notice: 'V action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_action
      @v_action = VAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_action_params
      params.require(:v_action).permit(:name)
    end
end
