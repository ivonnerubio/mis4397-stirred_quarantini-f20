class FDmikaelsController < ApplicationController
  before_action :set_f_dmikael, only: [:show, :edit, :update, :destroy]

  # GET /f_dmikaels
  # GET /f_dmikaels.json
  def index
    @f_dmikaels = FDmikael.all
  end

  # GET /f_dmikaels/1
  # GET /f_dmikaels/1.json
  def show
  end

  # GET /f_dmikaels/new
  def new
    @f_dmikael = FDmikael.new
  end

  # GET /f_dmikaels/1/edit
  def edit
  end

  # POST /f_dmikaels
  # POST /f_dmikaels.json
  def create
    @f_dmikael = FDmikael.new(f_dmikael_params)

    respond_to do |format|
      if @f_dmikael.save
        format.html { redirect_to @f_dmikael, notice: 'F dmikael was successfully created.' }
        format.json { render :show, status: :created, location: @f_dmikael }
      else
        format.html { render :new }
        format.json { render json: @f_dmikael.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dmikaels/1
  # PATCH/PUT /f_dmikaels/1.json
  def update
    respond_to do |format|
      if @f_dmikael.update(f_dmikael_params)
        format.html { redirect_to @f_dmikael, notice: 'F dmikael was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dmikael }
      else
        format.html { render :edit }
        format.json { render json: @f_dmikael.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dmikaels/1
  # DELETE /f_dmikaels/1.json
  def destroy
    @f_dmikael.destroy
    respond_to do |format|
      format.html { redirect_to f_dmikaels_url, notice: 'F dmikael was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dmikael
      @f_dmikael = FDmikael.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dmikael_params
      params.fetch(:f_dmikael, {})
    end
end
