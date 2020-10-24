class ResearchSubmissionsController < ApplicationController
  before_action :set_research_submission, only: [:show, :edit, :update, :destroy]

  # GET /research_submissions
  # GET /research_submissions.json
  def index
    @research_submissions = ResearchSubmission.all
  end

  # GET /research_submissions/1
  # GET /research_submissions/1.json
  def show
  end

  # GET /research_submissions/new
  def new
    @research_submission = ResearchSubmission.new
  end

  # GET /research_submissions/1/edit
  def edit
  end

  # POST /research_submissions
  # POST /research_submissions.json
  def create
    @research_submission = ResearchSubmission.new(research_submission_params)

    respond_to do |format|
      if @research_submission.save
        format.html { redirect_to @research_submission, notice: 'Research submission was successfully created.' }
        format.json { render :show, status: :created, location: @research_submission }
      else
        format.html { render :new }
        format.json { render json: @research_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_submissions/1
  # PATCH/PUT /research_submissions/1.json
  def update
    respond_to do |format|
      if @research_submission.update(research_submission_params)
        format.html { redirect_to @research_submission, notice: 'Research submission was successfully updated.' }
        format.json { render :show, status: :ok, location: @research_submission }
      else
        format.html { render :edit }
        format.json { render json: @research_submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_submissions/1
  # DELETE /research_submissions/1.json
  def destroy
    @research_submission.destroy
    respond_to do |format|
      format.html { redirect_to research_submissions_url, notice: 'Research submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_submission
      @research_submission = ResearchSubmission.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def research_submission_params
      params.require(:research_submission).permit(:page_title, :string, :submission_title, :string, :body_of_submission, :text, :comments, :text, :authorID, :string, :author_name, :string)
    end
end
