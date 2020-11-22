class FDevelynsController < ApplicationController
  before_action :set_f_develyn, only: [:show, :edit, :update, :destroy]

  # GET /f_develyns
  # GET /f_develyns.json
  def index
    @f_develyns = FDevelyn.all
  end

  # GET /f_develyns/1
  # GET /f_develyns/1.json
  def show
  end

  # GET /f_develyns/new
  def new
    @f_develyn = FDevelyn.new
  end

  # GET /f_develyns/1/edit
  def edit
  end

  # POST /f_develyns
  # POST /f_develyns.json
  def create
    @f_develyn = FDevelyn.new(f_develyn_params)

    respond_to do |format|
      if @f_develyn.save
        format.html { redirect_to @f_develyn, notice: 'F develyn was successfully created.' }
        format.json { render :show, status: :created, location: @f_develyn }
      else
        format.html { render :new }
        format.json { render json: @f_develyn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_develyns/1
  # PATCH/PUT /f_develyns/1.json
  def update
    respond_to do |format|
      if @f_develyn.update(f_develyn_params)
        format.html { redirect_to @f_develyn, notice: 'F develyn was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_develyn }
      else
        format.html { render :edit }
        format.json { render json: @f_develyn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_develyns/1
  # DELETE /f_develyns/1.json
  def destroy
    @f_develyn.destroy
    respond_to do |format|
      format.html { redirect_to f_develyns_url, notice: 'F develyn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_develyn
      @f_develyn = FDevelyn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_develyn_params
      params.fetch(:f_develyn, {})
    end
end
