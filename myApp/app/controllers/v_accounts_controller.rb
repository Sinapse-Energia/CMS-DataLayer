class VAccountsController < ApplicationController
  before_action :set_v_account, only: [:show, :edit, :update, :destroy]

  # GET /v_accounts
  # GET /v_accounts.json
  def index
    @v_accounts = VAccount.all
  end

  # GET /v_accounts/1
  # GET /v_accounts/1.json
  def show
  end

  # GET /v_accounts/new
  def new
    @v_account = VAccount.new
  end

  # GET /v_accounts/1/edit
  def edit
  end

  # POST /v_accounts
  # POST /v_accounts.json
  def create
    @v_account = VAccount.new(v_account_params)

    respond_to do |format|
      if @v_account.save
        format.html { redirect_to @v_account, notice: 'V account was successfully created.' }
        format.json { render :show, status: :created, location: @v_account }
      else
        format.html { render :new }
        format.json { render json: @v_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_accounts/1
  # PATCH/PUT /v_accounts/1.json
  def update
    respond_to do |format|
      if @v_account.update(v_account_params)
        format.html { redirect_to @v_account, notice: 'V account was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_account }
      else
        format.html { render :edit }
        format.json { render json: @v_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_accounts/1
  # DELETE /v_accounts/1.json
  def destroy
    @v_account.destroy
    respond_to do |format|
      format.html { redirect_to v_accounts_url, notice: 'V account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_account
      @v_account = VAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_account_params
      params.require(:v_account).permit(:description)
    end
end
