class FDrobertsController < ApplicationController
  before_action :set_f_drobert, only: [:show, :edit, :update, :destroy]

  # GET /f_droberts
  # GET /f_droberts.json
  def index
    @f_droberts = FDrobert.all
  end

  # GET /f_droberts/1
  # GET /f_droberts/1.json
  def show
  end

  # GET /f_droberts/new
  def new
    @f_drobert = FDrobert.new
  end

  # GET /f_droberts/1/edit
  def edit
  end

  # POST /f_droberts
  # POST /f_droberts.json
  def create
    @f_drobert = FDrobert.new(f_drobert_params)

    respond_to do |format|
      if @f_drobert.save
        format.html { redirect_to @f_drobert, notice: 'F drobert was successfully created.' }
        format.json { render :show, status: :created, location: @f_drobert }
      else
        format.html { render :new }
        format.json { render json: @f_drobert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_droberts/1
  # PATCH/PUT /f_droberts/1.json
  def update
    respond_to do |format|
      if @f_drobert.update(f_drobert_params)
        format.html { redirect_to @f_drobert, notice: 'F drobert was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_drobert }
      else
        format.html { render :edit }
        format.json { render json: @f_drobert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_droberts/1
  # DELETE /f_droberts/1.json
  def destroy
    @f_drobert.destroy
    respond_to do |format|
      format.html { redirect_to f_droberts_url, notice: 'F drobert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_drobert
      @f_drobert = FDrobert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_drobert_params
      params.fetch(:f_drobert, {})
    end
end
