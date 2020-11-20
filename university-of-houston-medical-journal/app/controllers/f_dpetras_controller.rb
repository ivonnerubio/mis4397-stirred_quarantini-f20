class FDpetrasController < ApplicationController
  before_action :set_f_dpetra, only: [:show, :edit, :update, :destroy]

  # GET /f_dpetras
  # GET /f_dpetras.json
  def index
    @f_dpetras = FDpetra.all
  end

  # GET /f_dpetras/1
  # GET /f_dpetras/1.json
  def show
  end

  # GET /f_dpetras/new
  def new
    @f_dpetra = FDpetra.new
  end

  # GET /f_dpetras/1/edit
  def edit
  end

  # POST /f_dpetras
  # POST /f_dpetras.json
  def create
    @f_dpetra = FDpetra.new(f_dpetra_params)

    respond_to do |format|
      if @f_dpetra.save
        format.html { redirect_to @f_dpetra, notice: 'F dpetra was successfully created.' }
        format.json { render :show, status: :created, location: @f_dpetra }
      else
        format.html { render :new }
        format.json { render json: @f_dpetra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dpetras/1
  # PATCH/PUT /f_dpetras/1.json
  def update
    respond_to do |format|
      if @f_dpetra.update(f_dpetra_params)
        format.html { redirect_to @f_dpetra, notice: 'F dpetra was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dpetra }
      else
        format.html { render :edit }
        format.json { render json: @f_dpetra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dpetras/1
  # DELETE /f_dpetras/1.json
  def destroy
    @f_dpetra.destroy
    respond_to do |format|
      format.html { redirect_to f_dpetras_url, notice: 'F dpetra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dpetra
      @f_dpetra = FDpetra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dpetra_params
      params.fetch(:f_dpetra, {})
    end
end
