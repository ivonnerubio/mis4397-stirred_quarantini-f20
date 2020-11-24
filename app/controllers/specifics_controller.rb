class SpecificsController < ApplicationController
  before_action :set_specific, only: [:show, :edit, :update, :destroy]

  # GET /specifics
  # GET /specifics.json
  def index
    @specifics = Specific.all
  end

  # GET /specifics/1
  # GET /specifics/1.json
  def show
  end

  # GET /specifics/new
  def new
    @specific = Specific.new
  end

  # GET /specifics/1/edit
  def edit
  end

  # POST /specifics
  # POST /specifics.json
  def create
    @specific = Specific.new(specific_params)

    respond_to do |format|
      if @specific.save
        format.html { redirect_to @specific, notice: 'Specific was successfully created.' }
        format.json { render :show, status: :created, location: @specific }
      else
        format.html { render :new }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specifics/1
  # PATCH/PUT /specifics/1.json
  def update
    respond_to do |format|
      if @specific.update(specific_params)
        format.html { redirect_to @specific, notice: 'Specific was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific }
      else
        format.html { render :edit }
        format.json { render json: @specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specifics/1
  # DELETE /specifics/1.json
  def destroy
    @specific.destroy
    respond_to do |format|
      format.html { redirect_to specifics_url, notice: 'Specific was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific
      @specific = Specific.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def specific_params
      params.require(:specific).permit(:Specialty, :category_name, :string, :description, :text, :data_type, :string, :data_title, :string, :description, :authors, :string, :authorID, :string)
    end
end
