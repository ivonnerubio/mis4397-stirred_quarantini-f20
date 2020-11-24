class FDowaisController < ApplicationController
  before_action :set_f_dowai, only: [:show, :edit, :update, :destroy]

  # GET /f_dowais
  # GET /f_dowais.json
  def index
    @f_dowais = FDowai.all
  end

  # GET /f_dowais/1
  # GET /f_dowais/1.json
  def show
  end

  # GET /f_dowais/new
  def new
    @f_dowai = FDowai.new
  end

  # GET /f_dowais/1/edit
  def edit
  end

  # POST /f_dowais
  # POST /f_dowais.json
  def create
    @f_dowai = FDowai.new(f_dowai_params)

    respond_to do |format|
      if @f_dowai.save
        format.html { redirect_to @f_dowai, notice: 'F dowai was successfully created.' }
        format.json { render :show, status: :created, location: @f_dowai }
      else
        format.html { render :new }
        format.json { render json: @f_dowai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_dowais/1
  # PATCH/PUT /f_dowais/1.json
  def update
    respond_to do |format|
      if @f_dowai.update(f_dowai_params)
        format.html { redirect_to @f_dowai, notice: 'F dowai was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_dowai }
      else
        format.html { render :edit }
        format.json { render json: @f_dowai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_dowais/1
  # DELETE /f_dowais/1.json
  def destroy
    @f_dowai.destroy
    respond_to do |format|
      format.html { redirect_to f_dowais_url, notice: 'F dowai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_dowai
      @f_dowai = FDowai.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_dowai_params
      params.fetch(:f_dowai, {})
    end
end
