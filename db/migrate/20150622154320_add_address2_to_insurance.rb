class AddAddress2ToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :address_2, :string
  end
end
