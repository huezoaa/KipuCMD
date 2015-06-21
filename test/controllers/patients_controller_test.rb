require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post :create, patient: { admission_date: @patient.admission_date, alt_phone: @patient.alt_phone, diagnosis_codes: @patient.diagnoses_codes, dob: @patient.dob, email: @patient.email, ethnicity: @patient.ethnicity, first_name: @patient.first_name, gender: @patient.gender, kipu_account_number: @patient.kipu_account_number, last_name: @patient.last_name, marital_status: @patient.marital_status, middle_initial: @patient.middle_initial, phone: @patient.phone, race: @patient.race, ssn: @patient.ssn }
    end

    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should show patient" do
    get :show, id: @patient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient
    assert_response :success
  end

  test "should update patient" do
    patch :update, id: @patient, patient: { admission_date: @patient.admission_date, alt_phone: @patient.alt_phone, diagnosis_codes: @patient.diagnoses_codes, dob: @patient.dob, email: @patient.email, ethnicity: @patient.ethnicity, first_name: @patient.first_name, gender: @patient.gender, kipu_account_number: @patient.kipu_account_number, last_name: @patient.last_name, marital_status: @patient.marital_status, middle_initial: @patient.middle_initial, phone: @patient.phone, race: @patient.race, ssn: @patient.ssn }
    assert_redirected_to patient_path(assigns(:patient))
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete :destroy, id: @patient
    end

    assert_redirected_to patients_path
  end
end
