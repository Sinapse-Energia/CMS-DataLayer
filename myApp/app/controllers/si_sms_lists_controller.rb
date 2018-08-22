class SiSmsListsController < ApplicationController
  before_action :set_si_sms_list, only: [:show, :edit, :update, :destroy]

  # GET /si_sms_lists
  # GET /si_sms_lists.json
  def index
    @si_sms_lists = SiSmsList.all
  end

  # GET /si_sms_lists/1
  # GET /si_sms_lists/1.json
  def show
  end

  # GET /si_sms_lists/new
  def new
    @si_sms_list = SiSmsList.new
  end

  # GET /si_sms_lists/1/edit
  def edit
  end

  # POST /si_sms_lists
  # POST /si_sms_lists.json
  def create
    @si_sms_list = SiSmsList.new(si_sms_list_params)

    respond_to do |format|
      if @si_sms_list.save
        format.html { redirect_to @si_sms_list, notice: 'Si sms list was successfully created.' }
        format.json { render :show, status: :created, location: @si_sms_list }
      else
        format.html { render :new }
        format.json { render json: @si_sms_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_sms_lists/1
  # PATCH/PUT /si_sms_lists/1.json
  def update
    respond_to do |format|
      if @si_sms_list.update(si_sms_list_params)
        format.html { redirect_to @si_sms_list, notice: 'Si sms list was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_sms_list }
      else
        format.html { render :edit }
        format.json { render json: @si_sms_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_sms_lists/1
  # DELETE /si_sms_lists/1.json
  def destroy
    @si_sms_list.destroy
    respond_to do |format|
      format.html { redirect_to si_sms_lists_url, notice: 'Si sms list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_sms_list
      @si_sms_list = SiSmsList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_sms_list_params
      params.require(:si_sms_list).permit(:description, :id_user_aux)
    end
end
