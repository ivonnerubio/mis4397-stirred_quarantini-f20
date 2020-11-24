class FDalexisController < ApplicationController
  before_action :set_f_dalexi, only: [:show, :edit, :update, :destroy]

  # GET /f_dalexis
  # GET /f_dalexis.json
  def index
    @f_dalexis = FDalexi.all
  end

  # GET /f_dalexis/1
  # GET /f_dalexis/1.json
  def show
  end

  # GET /f_dalexis/new
  def new
    @f_dalexi = FDalexi.new
  end

  # GET /f_dalexis/1/edit
  def edit
  end

  # POST /f_dalexis
  # POST /f_dalexis.json
  def create
    @f_dalexi = FDalexi.new(f_dalexi_params)

    respond_to do |format|
      if @f_dalexi.save
        format.html { redirect_to @f_dalexi, notice: 'F dalexi was successfully created.' }
        format.json { render :show, status: :created, location: @f_dalexi }
      else
        format.html { render :new }
        format.json { render json: @f_dalexi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dalexis/1
  # PATCH/PUT /f_dalexis/1.json
  def update
    respond_to do |format|
      if @f_dalexi.update(f_dalexi_params)
        format.html { redirect_to @f_dalexi, notice: 'F dalexi was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dalexi }
      else
        format.html { render :edit }
        format.json { render json: @f_dalexi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dalexis/1
  # DELETE /f_dalexis/1.json
  def destroy
    @f_dalexi.destroy
    respond_to do |format|
      format.html { redirect_to f_dalexis_url, notice: 'F dalexi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dalexi
      @f_dalexi = FDalexi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dalexi_params
      params.fetch(:f_dalexi, {})
    end
end
