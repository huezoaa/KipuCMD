class AddZipCodeToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :zipcode, :string
  end
end
