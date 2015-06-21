class AddPatientToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :patient, index: true
    add_foreign_key :addresses, :patients
  end
end
