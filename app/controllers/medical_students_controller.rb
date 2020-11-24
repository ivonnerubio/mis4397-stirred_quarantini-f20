class MedicalStudentsController < ApplicationController
  before_action :set_medical_student, only: [:show, :edit, :update, :destroy]

  # GET /medical_students
  # GET /medical_students.json
  def index
    @medical_students = MedicalStudent.all
  end

  # GET /medical_students/1
  # GET /medical_students/1.json
  def show
  end

  # GET /medical_students/new
  def new
    @medical_student = MedicalStudent.new
  end

  # GET /medical_students/1/edit
  def edit
  end

  # POST /medical_students
  # POST /medical_students.json
  def create
    @medical_student = MedicalStudent.new(medical_student_params)

    respond_to do |format|
      if @medical_student.save
        format.html { redirect_to @medical_student, notice: 'Medical student was successfully created.' }
        format.json { render :show, status: :created, location: @medical_student }
      else
        format.html { render :new }
        format.json { render json: @medical_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_students/1
  # PATCH/PUT /medical_students/1.json
  def update
    respond_to do |format|
      if @medical_student.update(medical_student_params)
        format.html { redirect_to @medical_student, notice: 'Medical student was successfully updated.' }
        format.json { render :show, status: :ok, location: @medical_student }
      else
        format.html { render :edit }
        format.json { render json: @medical_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_students/1
  # DELETE /medical_students/1.json
  def destroy
    @medical_student.destroy
    respond_to do |format|
      format.html { redirect_to medical_students_url, notice: 'Medical student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_student
      @medical_student = MedicalStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_student_params
      params.require(:medical_student).permit(:name, :education, :background, :award, :certification)
    end
end
