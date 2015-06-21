json.array!(@patients) do |patient|
  json.extract! patient, :id, :kipu_account_number, :admission_date, :first_name, :last_name, :middle_initial, :gender, :marital_status, :diagnosis_codes, :race, :ethnicity, :ssn, :dob, :phone, :alt_phone, :email
  json.url patient_url(patient, format: :json)
end
