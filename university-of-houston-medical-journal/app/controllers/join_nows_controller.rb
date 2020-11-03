class JoinNowsController < ApplicationController
  before_action :set_join_now, only: [:show, :edit, :update, :destroy]

  # GET /join_nows
  # GET /join_nows.json
  def index
    @join_nows = JoinNow.all
  end

  # GET /join_nows/1
  # GET /join_nows/1.json
  def show
  end

  # GET /join_nows/new
  def new
    @join_now = JoinNow.new
  end

  # GET /join_nows/1/edit
  def edit
  end

  # POST /join_nows
  # POST /join_nows.json
  def create
    @join_now = JoinNow.new(join_now_params)

    respond_to do |format|
      if @join_now.save
        format.html { redirect_to @join_now, notice: 'Join now was successfully created.' }
        format.json { render :show, status: :created, location: @join_now }
      else
        format.html { render :new }
        format.json { render json: @join_now.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_nows/1
  # PATCH/PUT /join_nows/1.json
  def update
    respond_to do |format|
      if @join_now.update(join_now_params)
        format.html { redirect_to @join_now, notice: 'Join now was successfully updated.' }
        format.json { render :show, status: :ok, location: @join_now }
      else
        format.html { render :edit }
        format.json { render json: @join_now.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_nows/1
  # DELETE /join_nows/1.json
  def destroy
    @join_now.destroy
    respond_to do |format|
      format.html { redirect_to join_nows_url, notice: 'Join now was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_now
      @join_now = JoinNow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_now_params
      params.require(:join_now).permit(:title, :string, :data_text, :text)
    end
end
