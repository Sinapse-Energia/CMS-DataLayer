class VTypelamppostsController < ApplicationController
  before_action :set_v_typelamppost, only: [:show, :edit, :update, :destroy]

  # GET /v_typelampposts
  # GET /v_typelampposts.json
  def index
    @v_typelampposts = VTypelamppost.all
  end

  # GET /v_typelampposts/1
  # GET /v_typelampposts/1.json
  def show
  end

  # GET /v_typelampposts/new
  def new
    @v_typelamppost = VTypelamppost.new
  end

  # GET /v_typelampposts/1/edit
  def edit
  end

  # POST /v_typelampposts
  # POST /v_typelampposts.json
  def create
    @v_typelamppost = VTypelamppost.new(v_typelamppost_params)

    respond_to do |format|
      if @v_typelamppost.save
        format.html { redirect_to @v_typelamppost, notice: 'V typelamppost was successfully created.' }
        format.json { render :show, status: :created, location: @v_typelamppost }
      else
        format.html { render :new }
        format.json { render json: @v_typelamppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_typelampposts/1
  # PATCH/PUT /v_typelampposts/1.json
  def update
    respond_to do |format|
      if @v_typelamppost.update(v_typelamppost_params)
        format.html { redirect_to @v_typelamppost, notice: 'V typelamppost was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_typelamppost }
      else
        format.html { render :edit }
        format.json { render json: @v_typelamppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_typelampposts/1
  # DELETE /v_typelampposts/1.json
  def destroy
    @v_typelamppost.destroy
    respond_to do |format|
      format.html { redirect_to v_typelampposts_url, notice: 'V typelamppost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_typelamppost
      @v_typelamppost = VTypelamppost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_typelamppost_params
      params.require(:v_typelamppost).permit(:name, :short_name)
    end
end
