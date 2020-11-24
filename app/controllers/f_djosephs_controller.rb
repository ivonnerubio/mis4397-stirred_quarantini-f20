class FDjosephsController < ApplicationController
  before_action :set_f_djoseph, only: [:show, :edit, :update, :destroy]

  # GET /f_djosephs
  # GET /f_djosephs.json
  def index
    @f_djosephs = FDjoseph.all
  end

  # GET /f_djosephs/1
  # GET /f_djosephs/1.json
  def show
  end

  # GET /f_djosephs/new
  def new
    @f_djoseph = FDjoseph.new
  end

  # GET /f_djosephs/1/edit
  def edit
  end

  # POST /f_djosephs
  # POST /f_djosephs.json
  def create
    @f_djoseph = FDjoseph.new(f_djoseph_params)

    respond_to do |format|
      if @f_djoseph.save
        format.html { redirect_to @f_djoseph, notice: 'F djoseph was successfully created.' }
        format.json { render :show, status: :created, location: @f_djoseph }
      else
        format.html { render :new }
        format.json { render json: @f_djoseph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_djosephs/1
  # PATCH/PUT /f_djosephs/1.json
  def update
    respond_to do |format|
      if @f_djoseph.update(f_djoseph_params)
        format.html { redirect_to @f_djoseph, notice: 'F djoseph was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_djoseph }
      else
        format.html { render :edit }
        format.json { render json: @f_djoseph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_djosephs/1
  # DELETE /f_djosephs/1.json
  def destroy
    @f_djoseph.destroy
    respond_to do |format|
      format.html { redirect_to f_djosephs_url, notice: 'F djoseph was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_djoseph
      @f_djoseph = FDjoseph.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def f_djoseph_params
      params.fetch(:f_djoseph, {})
    end
end
