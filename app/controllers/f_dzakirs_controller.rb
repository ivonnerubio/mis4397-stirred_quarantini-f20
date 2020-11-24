class FDzakirsController < ApplicationController
  before_action :set_f_dzakir, only: [:show, :edit, :update, :destroy]

  # GET /f_dzakirs
  # GET /f_dzakirs.json
  def index
    @f_dzakirs = FDzakir.all
  end

  # GET /f_dzakirs/1
  # GET /f_dzakirs/1.json
  def show
  end

  # GET /f_dzakirs/new
  def new
    @f_dzakir = FDzakir.new
  end

  # GET /f_dzakirs/1/edit
  def edit
  end

  # POST /f_dzakirs
  # POST /f_dzakirs.json
  def create
    @f_dzakir = FDzakir.new(f_dzakir_params)

    respond_to do |format|
      if @f_dzakir.save
        format.html { redirect_to @f_dzakir, notice: 'F dzakir was successfully created.' }
        format.json { render :show, status: :created, location: @f_dzakir }
      else
        format.html { render :new }
        format.json { render json: @f_dzakir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dzakirs/1
  # PATCH/PUT /f_dzakirs/1.json
  def update
    respond_to do |format|
      if @f_dzakir.update(f_dzakir_params)
        format.html { redirect_to @f_dzakir, notice: 'F dzakir was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dzakir }
      else
        format.html { render :edit }
        format.json { render json: @f_dzakir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dzakirs/1
  # DELETE /f_dzakirs/1.json
  def destroy
    @f_dzakir.destroy
    respond_to do |format|
      format.html { redirect_to f_dzakirs_url, notice: 'F dzakir was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dzakir
      @f_dzakir = FDzakir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dzakir_params
      params.fetch(:f_dzakir, {})
    end
end
