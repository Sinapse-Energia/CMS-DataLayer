class VOccurrencesController < ApplicationController
  before_action :set_v_occurrence, only: [:show, :edit, :update, :destroy]

  # GET /v_occurrences
  # GET /v_occurrences.json
  def index
    @v_occurrences = VOccurrence.all
  end

  # GET /v_occurrences/1
  # GET /v_occurrences/1.json
  def show
  end

  # GET /v_occurrences/new
  def new
    @v_occurrence = VOccurrence.new
  end

  # GET /v_occurrences/1/edit
  def edit
  end

  # POST /v_occurrences
  # POST /v_occurrences.json
  def create
    @v_occurrence = VOccurrence.new(v_occurrence_params)

    respond_to do |format|
      if @v_occurrence.save
        format.html { redirect_to @v_occurrence, notice: 'V occurrence was successfully created.' }
        format.json { render :show, status: :created, location: @v_occurrence }
      else
        format.html { render :new }
        format.json { render json: @v_occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /v_occurrences/1
  # PATCH/PUT /v_occurrences/1.json
  def update
    respond_to do |format|
      if @v_occurrence.update(v_occurrence_params)
        format.html { redirect_to @v_occurrence, notice: 'V occurrence was successfully updated.' }
        format.json { render :show, status: :ok, location: @v_occurrence }
      else
        format.html { render :edit }
        format.json { render json: @v_occurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /v_occurrences/1
  # DELETE /v_occurrences/1.json
  def destroy
    @v_occurrence.destroy
    respond_to do |format|
      format.html { redirect_to v_occurrences_url, notice: 'V occurrence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v_occurrence
      @v_occurrence = VOccurrence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def v_occurrence_params
      params.require(:v_occurrence).permit(:name)
    end
end
