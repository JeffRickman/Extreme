require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address_l1ne1: @student.address_l1ne1, address_line2: @student.address_line2, allergy: @student.allergy, allergy_status: @student.allergy_status, diet: @student.diet, diet_status: @student.diet_status, dob: @student.dob, name: @student.name, parent_contact: @student.parent_contact, parent_email: @student.parent_email, parent_phone: @student.parent_phone, sex: @student.sex, status: @student.status } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address_l1ne1: @student.address_l1ne1, address_line2: @student.address_line2, allergy: @student.allergy, allergy_status: @student.allergy_status, diet: @student.diet, diet_status: @student.diet_status, dob: @student.dob, name: @student.name, parent_contact: @student.parent_contact, parent_email: @student.parent_email, parent_phone: @student.parent_phone, sex: @student.sex, status: @student.status } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
