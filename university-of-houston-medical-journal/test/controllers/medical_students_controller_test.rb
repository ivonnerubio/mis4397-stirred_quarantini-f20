require 'test_helper'

class MedicalStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_student = medical_students(:one)
  end

  test "should get index" do
    get medical_students_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_student_url
    assert_response :success
  end

  test "should create medical_student" do
    assert_difference('MedicalStudent.count') do
      post medical_students_url, params: { medical_student: { award: @medical_student.award, background: @medical_student.background, certification: @medical_student.certification, education: @medical_student.education, name: @medical_student.name } }
    end

    assert_redirected_to medical_student_url(MedicalStudent.last)
  end

  test "should show medical_student" do
    get medical_student_url(@medical_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_student_url(@medical_student)
    assert_response :success
  end

  test "should update medical_student" do
    patch medical_student_url(@medical_student), params: { medical_student: { award: @medical_student.award, background: @medical_student.background, certification: @medical_student.certification, education: @medical_student.education, name: @medical_student.name } }
    assert_redirected_to medical_student_url(@medical_student)
  end

  test "should destroy medical_student" do
    assert_difference('MedicalStudent.count', -1) do
      delete medical_student_url(@medical_student)
    end

    assert_redirected_to medical_students_url
  end
end
