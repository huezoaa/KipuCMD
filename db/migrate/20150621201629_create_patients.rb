class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :kipu_account_number
      t.datetime :admission_date
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :gender
      t.string :marital_status
      t.string :diagnosis_codes
      t.string :race
      t.string :ethnicity
      t.string :ssn
      t.string :dob
      t.string :phone
      t.string :alt_phone
      t.string :email

      t.timestamps null: false
    end
  end
end
