class AddPatientToInsurance < ActiveRecord::Migration
  def change
    add_reference :insurances, :patient, index: true
    add_foreign_key :insurances, :patients
  end
end
