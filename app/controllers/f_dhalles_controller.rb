class FDhallesController < ApplicationController
  before_action :set_f_dhalle, only: [:show, :edit, :update, :destroy]

  # GET /f_dhalles
  # GET /f_dhalles.json
  def index
    @f_dhalles = FDhalle.all
  end

  # GET /f_dhalles/1
  # GET /f_dhalles/1.json
  def show
  end

  # GET /f_dhalles/new
  def new
    @f_dhalle = FDhalle.new
  end

  # GET /f_dhalles/1/edit
  def edit
  end

  # POST /f_dhalles
  # POST /f_dhalles.json
  def create
    @f_dhalle = FDhalle.new(f_dhalle_params)

    respond_to do |format|
      if @f_dhalle.save
        format.html { redirect_to @f_dhalle, notice: 'F dhalle was successfully created.' }
        format.json { render :show, status: :created, location: @f_dhalle }
      else
        format.html { render :new }
        format.json { render json: @f_dhalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dhalles/1
  # PATCH/PUT /f_dhalles/1.json
  def update
    respond_to do |format|
      if @f_dhalle.update(f_dhalle_params)
        format.html { redirect_to @f_dhalle, notice: 'F dhalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dhalle }
      else
        format.html { render :edit }
        format.json { render json: @f_dhalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dhalles/1
  # DELETE /f_dhalles/1.json
  def destroy
    @f_dhalle.destroy
    respond_to do |format|
      format.html { redirect_to f_dhalles_url, notice: 'F dhalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dhalle
      @f_dhalle = FDhalle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dhalle_params
      params.fetch(:f_dhalle, {})
    end
end
