class SiEmailListsController < ApplicationController
  before_action :set_si_email_list, only: [:show, :edit, :update, :destroy]

  # GET /si_email_lists
  # GET /si_email_lists.json
  def index
    @si_email_lists = SiEmailList.all
  end

  # GET /si_email_lists/1
  # GET /si_email_lists/1.json
  def show
  end

  # GET /si_email_lists/new
  def new
    @si_email_list = SiEmailList.new
  end

  # GET /si_email_lists/1/edit
  def edit
  end

  # POST /si_email_lists
  # POST /si_email_lists.json
  def create
    @si_email_list = SiEmailList.new(si_email_list_params)

    respond_to do |format|
      if @si_email_list.save
        format.html { redirect_to @si_email_list, notice: 'Si email list was successfully created.' }
        format.json { render :show, status: :created, location: @si_email_list }
      else
        format.html { render :new }
        format.json { render json: @si_email_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /si_email_lists/1
  # PATCH/PUT /si_email_lists/1.json
  def update
    respond_to do |format|
      if @si_email_list.update(si_email_list_params)
        format.html { redirect_to @si_email_list, notice: 'Si email list was successfully updated.' }
        format.json { render :show, status: :ok, location: @si_email_list }
      else
        format.html { render :edit }
        format.json { render json: @si_email_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /si_email_lists/1
  # DELETE /si_email_lists/1.json
  def destroy
    @si_email_list.destroy
    respond_to do |format|
      format.html { redirect_to si_email_lists_url, notice: 'Si email list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_si_email_list
      @si_email_list = SiEmailList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def si_email_list_params
      params.require(:si_email_list).permit(:description, :id_user_aux)
    end
end
