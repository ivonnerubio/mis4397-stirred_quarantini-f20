class FDcarriesController < ApplicationController
  before_action :set_f_dcarry, only: [:show, :edit, :update, :destroy]

  # GET /f_dcarries
  # GET /f_dcarries.json
  def index
    @f_dcarries = FDcarrie.all
  end

  # GET /f_dcarries/1
  # GET /f_dcarries/1.json
  def show
  end

  # GET /f_dcarries/new
  def new
    @f_dcarry = FDcarrie.new
  end

  # GET /f_dcarries/1/edit
  def edit
  end

  # POST /f_dcarries
  # POST /f_dcarries.json
  def create
    @f_dcarry = FDcarrie.new(f_dcarry_params)

    respond_to do |format|
      if @f_dcarry.save
        format.html { redirect_to @f_dcarry, notice: 'F dcarrie was successfully created.' }
        format.json { render :show, status: :created, location: @f_dcarry }
      else
        format.html { render :new }
        format.json { render json: @f_dcarry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dcarries/1
  # PATCH/PUT /f_dcarries/1.json
  def update
    respond_to do |format|
      if @f_dcarry.update(f_dcarry_params)
        format.html { redirect_to @f_dcarry, notice: 'F dcarrie was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dcarry }
      else
        format.html { render :edit }
        format.json { render json: @f_dcarry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dcarries/1
  # DELETE /f_dcarries/1.json
  def destroy
    @f_dcarry.destroy
    respond_to do |format|
      format.html { redirect_to f_dcarries_url, notice: 'F dcarrie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dcarry
      @f_dcarry = FDcarrie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dcarry_params
      params.fetch(:f_dcarry, {})
    end
end
