class AddAddress1ToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :address_1, :string
  end
end
