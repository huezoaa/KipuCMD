class AddPhoneToInsurance < ActiveRecord::Migration
  def change
    add_column :insurances, :phone, :string
  end
end
