class AddCityToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :city, :string
  end
end
