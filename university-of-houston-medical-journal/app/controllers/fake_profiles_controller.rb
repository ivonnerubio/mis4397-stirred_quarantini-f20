class FakeProfilesController < ApplicationController
  before_action :set_fake_profile, only: [:show, :edit, :update, :destroy]

  # GET /fake_profiles
  # GET /fake_profiles.json
  def index
    @fake_profiles = FakeProfile.all
  end

  # GET /fake_profiles/1
  # GET /fake_profiles/1.json
  def show
  end

  # GET /fake_profiles/new
  def new
    @fake_profile = FakeProfile.new
  end

  # GET /fake_profiles/1/edit
  def edit
  end

  # POST /fake_profiles
  # POST /fake_profiles.json
  def create
    @fake_profile = FakeProfile.new(fake_profile_params)

    respond_to do |format|
      if @fake_profile.save
        format.html { redirect_to @fake_profile, notice: 'Fake profile was successfully created.' }
        format.json { render :show, status: :created, location: @fake_profile }
      else
        format.html { render :new }
        format.json { render json: @fake_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fake_profiles/1
  # PATCH/PUT /fake_profiles/1.json
  def update
    respond_to do |format|
      if @fake_profile.update(fake_profile_params)
        format.html { redirect_to @fake_profile, notice: 'Fake profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @fake_profile }
      else
        format.html { render :edit }
        format.json { render json: @fake_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fake_profiles/1
  # DELETE /fake_profiles/1.json
  def destroy
    @fake_profile.destroy
    respond_to do |format|
      format.html { redirect_to fake_profiles_url, notice: 'Fake profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fake_profile
      @fake_profile = FakeProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fake_profile_params
      params.require(:fake_profile).permit(:name, :education, :background, :award, :certification)
    end
end
